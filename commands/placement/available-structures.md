<!-- langmirror:chunk 0 -->
# 可用结构 (Available Structures)

在 ezEdits 的语境下，我们将 3D 空间中的方块排列称为“结构（structure）”。每个放置命令都要求用户提供一个 `<structure>` 参数。

目前可用的结构有：

<details>

<summary><mark style="color:blue;"><strong>剪贴板 (Clipboard / Cl)</strong></mark></summary>

基于你当前的 WorldEdit 剪贴板（//copy）的结构。

语法：<mark style="color:orange;">`Clipboard`</mark>

缩写：<mark style="color:orange;">`Cl`</mark>

选项：

* <mark style="color:blue;">**`Origin`**</mark><mark style="color:blue;">**&#x20;**</mark><mark style="color:blue;">**(O)**</mark>。默认为 INHERENT。
  * INHERENT (I) 将使用复制时的位置
  * CENTER (C) 将使用剪贴板的几何中心
* <mark style="color:blue;">**`PasteMethod`**</mark><mark style="color:blue;">**&#x20;**</mark><mark style="color:blue;">**(PM**</mark><mark style="color:blue;">)</mark>。默认为 FAST。参见 [#comparison-between-fast-and-smooth-pastemethod](available-structures.md#comparison-between-fast-and-smooth-pastemethod "mention")
  * FAST (fast): 默认的无修改剪贴板粘贴，类似于 //paste
  * SMOOTHED (smooth): 当放置无法与世界网格匹配时（例如以 45° 旋转角度放置时）应用插值。外观更加平滑，可能更适合自由旋转的放置。
  * 参见 [#comparison-between-fast-and-smooth-pastemethod](available-structures.md#comparison-between-fast-and-smooth-pastemethod "mention")

- 示例：<mark style="color:orange;">`Clipboard(Origin:INHERENT,PasteMethod:SMOOTHED)`</mark> <mark style="color:orange;">或</mark> <mark style="color:orange;">`Cl(O:I,PM:smooth)`</mark>

</details>

<details>

<summary><mark style="color:blue;"><strong>建筑文件 (Schematic / Sc)</strong></mark></summary>

基于建筑文件的结构。

<!-- langmirror:chunk 1 -->
语法：<mark style="color:orange;">`Schematic(Filename:<name>,...)`</mark>

缩写：<mark style="color:orange;">`Sc(N:<name>,...)`</mark>

强制参数：

* <mark style="color:orange;">**`Filename`**</mark> **(**<mark style="color:orange;">**`N`**</mark>**)**。用于指定你想要放置的所有建筑文件名的正则表达式模式。
  * 例如，如果你输入 `Sc(N:tree_.*)`，我们将获取所有匹配正则表达式 `tree.*,` 的建筑文件，例如 `tree_1`、`tree_2`、`tree_3` 等。
  * 如果你使用了 FAWE 的玩家独立建筑文件路径系统（其中建筑文件被存放在以每个玩家 UUID 命名的文件夹中），你可以使用快捷方式 `%p` 来代表你自己的 UUID，并通过诸如 `%p/your_schematic.schem` 之类的路径访问你的文件夹。

选项：

<!-- langmirror:chunk 2 -->
* <mark style="color:blue;">**`Format`**</mark> **(**<mark style="color:blue;">**`F`**</mark>**)**. 建筑文件的格式。默认为 <mark style="color:blue;">`sponge.3`</mark>（如果你使用的是 FAWE，则默认为 FAWE 的 fast 格式）。默认值应适用于绝大多数情况。
* <mark style="color:blue;">**`Origin`**</mark> **(**<mark style="color:blue;">**`O`**</mark>**)**. 默认为 <mark style="color:blue;">`INHERENT`</mark>。
  * INHERENT (I) 将使用复制时的位置。
  * CENTER (C) 将使用剪贴板区域的中心作为原点。
* <mark style="color:blue;">**`PasteMethod`**</mark> **(**<mark style="color:blue;">**`PM`**</mark>)。 默认为 <mark style="color:blue;">`FAST`</mark>。
  * FAST (fast): 默认的剪贴板粘贴方式，不作修改，类似于 //paste
  * SMOOTHED (smooth): 当放置位置无法与世界网格匹配时（例如以 45° 旋转角度放置时）应用插值算法。外观看起来更平滑，可能更适合自由旋转的放置。
  * 参见 [#comparison-between-fast-and-smooth-pastemethod](available-structures.md#comparison-between-fast-and-smooth-pastemethod "mention")

</details>

<details>

<summary><mark style="color:blue;"><strong>Shape (Sh)</strong></mark></summary>

一种基于表达式的形状。ezEdits 提供了大量预定义形状。其材质由 pattern（样式）定义。

语法：<mark style="color:orange;">`Shape(Shape:<shape>,Pattern:<pattern>)`</mark>

缩写：<mark style="color:orange;">`Sh(S:<shape>,P:<pattern>)`</mark>

强制参数：

<!-- langmirror:chunk 3 -->
* <mark style="color:orange;">**`Shape`**</mark> (<mark style="color:orange;">**`S`**</mark>)。定义 Shape 结构的形状。其他参数在随后的括号内给出。可选形状包括：
  *   `Cone`

      ![](../../.gitbook/assets/StructuresShapesCone.png)
  *   `Crystal([Sides:<sides>],[Extrusion:<value>])`

      ![](../../.gitbook/assets/StructuresShapesCrystal.gif)
  *   `Cuboid`

      ![](../../.gitbook/assets/StructuresShapesCuboid.png)
  *   `Curl`

      ![](../../.gitbook/assets/StructuresShapesCurl.png)
  *   `Cylinder`

      ![](../../.gitbook/assets/StructuresShapesCylinder.png)
  *   `Ellipsoid`

      ![](../../.gitbook/assets/StructuresShapesEllipsoid.png)
  *   `Fur`

      ![](../../.gitbook/assets/StructuresShapesFur.png)
  *   `Heart`

      ![](../../.gitbook/assets/StructuresShapesHeart.png)
  *   `Jellybean`

      ![](../../.gitbook/assets/StructuresShapesJellybean.png)
  *   `Leaf`

      ![](../../.gitbook/assets/StructuresShapesLeaf.png)
  *   `Lemon`

      ![](../../.gitbook/assets/StructuresShapesLemon.png)
  *   `Onion`

      ![](../../.gitbook/assets/StructuresShapesOnion.png)
  *   `Polygon([Sides:<sides>])`

      ![](../../.gitbook/assets/StructuresShapesPolygon.gif)
  *   `Pyramid([Sides:<sides>])`

      ![](../../.gitbook/assets/StructuresShapesPyramid.gif)
  *   `Supersphere(Exponent:<exponent>)`

      ![](../../.gitbook/assets/StructuresShapesSupersphere.gif)
  *   `Tetrahedron`

      ![](../../.gitbook/assets/StructuresShapesTetrahedron.png)
  *   `Torus(Thickness:<value>)`

<!-- langmirror:chunk 4 -->
      ![](../../.gitbook/assets/StructuresShapesTorus.gif)
  * `=<expression>`
    * 除了预定义的形状外，你还可以使用 WorldEdit 表达式定义自己的形状。
    * 例如，此表达式将创建螺旋：\
      <mark style="color:blue;">`Shape(S:`</mark><mark style="color:blue;">**`=x+=sin(2*pi*y)/2;z+=cos(2*pi*y)/2;x*x+z*z<0.3^2`**</mark><mark style="color:blue;">`,P:clay)`</mark>
* <mark style="color:orange;">**`Pattern`**</mark> (<mark style="color:orange;">**`P`**</mark>)。构成形状的填充样式。
  * 注意：如果参数中包含逗号 `,` 会导致输入解析器报错。如果你想使用包含逗号的样式，则需要将 Pattern 参数放在引号中：例如 <mark style="color:blue;">`Sh(S:Cone,Pattern:`</mark><mark style="color:blue;">**`"dirt,diamond_block"`**</mark><mark style="color:blue;">`)`</mark>

</details>

<details>

<summary><mark style="color:blue;"><strong>Expression (Ex)</strong></mark></summary>

基于表达式的形状。由一个表达式同时定义形状和纹理。

语法：<mark style="color:orange;">`Expression(Expression:=<expression>,Palette:<palette>)`</mark>

缩写：<mark style="color:orange;">`Ex(E:=<expression>,P:<palette>)`</mark>

必填参数：

<!-- langmirror:chunk 5 -->
* <mark style="color:orange;">**`Expression`**</mark> **(**<mark style="color:orange;">**`E`**</mark>**)**。输入变量为 `x`、`y`、`z`（取值均在 \[-1,1] 之间）以及 `seed`。
  * `x=0`、`y=0`、`z=0` 是结构的中心原点。
  * 如果表达式 f(x,y,z) 的计算结果为 _f_≤_0_（0 或负数），则该位置将为空气。
  * 如果计算结果为 _1>f>0_（在 0 到 1 之间），则放置对应的调色盘方块。
  * 否则，任何 1 或更大的值都将放置调色盘中的最后一个方块。
  * `seed` 是一个介于 0 到 2147483647 之间的随机整数，每次放置时都不同（但在单次放置过程中保持不变）。
* <mark style="color:orange;">**`Palette`**</mark> **(**<mark style="color:orange;">**`P`**</mark>**)**。构成结构的一组方块。
  * 注意：参数中包含逗号 `,` 会破坏输入解析器。如果你想使用包含逗号的调色盘，则需要将 Palette 参数放在引号中：例如 <mark style="color:blue;">`Ex(E:=y*.5+.5,Palette:`</mark><mark style="color:blue;">**`"##GlowOrange,-##GlowPurple"`**</mark><mark style="color:blue;">`)`</mark>

示例：

<mark style="color:blue;">`Ex(E:"=x*x+y*y+z*z<perlin(seed,x,y,z,1,1,.5)",P:clay)`</mark>

<img src="../../.gitbook/assets/StructuresExpression_example1.gif" alt="" data-size="original">

</details>

<details>

<summary><mark style="color:blue;"><strong>TexturedShape (TS)</strong></mark></summary>

一种基于表达式的形状，具有基于表达式的纹理。Shape 参数定义其形状。Palette 和 Texturing-Shape 参数定义其材质。

<!-- langmirror:chunk 6 -->
语法：<mark style="color:orange;">`TexturedShape(Shape:<shape>,TexturingShape:<shape>,Palette:<palette>)`</mark>

缩写：<mark style="color:orange;">`TS(S:<shape>,T:<shape>,P:<palette>)`</mark>

强制参数：

* <mark style="color:orange;">**`Shape`**</mark> **(**<mark style="color:orange;">**`S`**</mark>**)**。参见 [形状结构](available-structures.md#shape-sh)。
* <mark style="color:orange;">**`TexturingShape`**</mark> **(**<mark style="color:orange;">**`T`**</mark>**)**。定义形状的哪些部分使用调色盘中的哪些方块进行绘制。与 Shape 参数一样接受一个形状。
* <mark style="color:orange;">**`Palette`**</mark> **(**<mark style="color:orange;">**`P`**</mark>**)**<mark style="color:orange;">。</mark>构成形状的方块集合。
  * 注意：参数中包含逗号 `,` 会破坏输入解析器。如果你想使用包含逗号的调色盘，则需要将 Palette 参数放在引号中：例如 <mark style="color:blue;">`TS(S:Cone,T:=y*.5+.5;Palette:`</mark><mark style="color:blue;">**`"dirt,diamond_block"`**</mark><mark style="color:blue;">`)`</mark>

</details>

<details>

<summary><mark style="color:blue;"><strong>Icosphere (Ic)</strong></mark></summary>

(<mark style="color:red;">**`!`**</mark>) 仅当你的服务器上运行了 [Arceon](https://www.patreon.com/c/arcaniax/home) v0.4.9 或更高版本时可用。

一个变形的二十面体球体（Icosphere）。在建筑社区中因 [Arceon Boulder](https://github.com/Brennian/Arceon-1.14/wiki/Brushes#boulder-brush) 而流行。

<!-- langmirror:chunk 7 -->
语法：<mark style="color:orange;">`Icosphere(Pattern:<pattern>,Randomness:<value>,Subdivisions:<value>,Platform:<value>)`</mark>

缩写：<mark style="color:orange;">`Ic(P:<pattern>,R:<value>,S:<value>,PL:<value>)`</mark>

必填参数：

* <mark style="color:orange;">**`Pattern`**</mark> (<mark style="color:orange;">**`P`**</mark>)。用于构成形状的样式。
  * 注意：作为参数一部分的逗号 `,` 会破坏输入解析器。如果你想使用包含逗号的样式，则需要将 Pattern 参数置于引号中：例如 <mark style="color:blue;">`Ic(P:`</mark><mark style="color:blue;">**`"dirt,diamond_block"`**</mark><mark style="color:blue;">`)`</mark>

可选参数：

* <mark style="color:blue;">**`Randomness`**</mark> **(**<mark style="color:blue;">**`R`**</mark>**)**。定义二十面体球（Icosphere）的变形强度。
  * 默认值为 <mark style="color:blue;">`0.5`</mark>。
  * 接受 0 到 1 之间的数值：
    * 0 会生成一个完美均匀的二十面体球，
    * ![](../../.gitbook/assets/StructuresIcosphere_example1.png)
    * 0.5 会生成一个形似大石块的变形形状。
    * ![](../../.gitbook/assets/StructuresIcosphere_example2.gif)
    * 1 会生成最大程度变形的大石块形状。
    * ![](../../.gitbook/assets/StructuresIcosphere_example3.gif)
    * 以上所有示例的 Subdivisions（细分次数）均为 0。
* <mark style="color:blue;">**`Subdivisions`**</mark> **(**<mark style="color:blue;">**`S`**</mark>**)**。决定所使用的多边形数量。
  * 默认值为 <mark style="color:blue;">`0`</mark>。
  * 可在 0, 1, 2, 3, 4 中选择：

<!-- langmirror:chunk 8 -->
* 0 会产生最明显的低多边形外观
    * ![](../../.gitbook/assets/StructuresIcosphere_example2.gif)
    * 1
    * ![](../../.gitbook/assets/StructuresIcosphere_example4.gif)
    * 2
    * ![](../../.gitbook/assets/StructuresIcosphere_example5.gif)
    * 3
    * ![](../../.gitbook/assets/StructuresIcosphere_example6.gif)
    * 4 会导致使用大量多边形，但也会限制随机量的效果，即使在最大随机值下也会呈现出非常接近球体的外观，正如你在细分次数为 3 时所看到的那样。
  * (<mark style="color:red;">**`!`**</mark>) 较高的细分次数会对性能产生很大影响。
* <mark style="color:blue;">**`Platform`**</mark> **(**<mark style="color:blue;">**`PL`**</mark>**)**：定义对二十面体球体上半部分进行压扁的程度。
  * 默认为 <mark style="color:blue;">`0.0`</mark>。
  * 接受 0 到 1 之间的值。

记住：所有给出的示例都是在三个轴向尺寸相等的情况下渲染的。使用 [dimensions 参数](placement-parameters.md#dimensions-s)来沿三个轴进行拉伸和挤压。

</details>

***

### FAST 与 SMOOTH 粘贴模式（PasteMethod）的比较：

[剪贴板](available-structures.md#clipboard-cl)和[建筑文件](available-structures.md#schematic-sc)都具有 PasteMethod 参数。以下是两种模式的比较：

<details>

<summary><mark style="color:blue;">比较</mark></summary>

假设这是我们的剪贴板或建筑文件：

<img src="../../.gitbook/assets/StructuresPasteMethod_example1.png" alt="" data-size="original">

以下是使用不同模式以奇特角度粘贴时的外观：

* `PasteMethod:FAST`

<img src="../../.gitbook/assets/StructuresPasteMethod_example2.png" alt="" data-size="original">

* vs `PasteMethod:SMOOTHED`

<img src="../../.gitbook/assets/StructuresPasteMethod_example3.png" alt="" data-size="original">

或者当以显著更大的尺寸粘贴时：

* `PasteMethod:FAST`

<!-- langmirror:chunk 9 -->
<img src="../../.gitbook/assets/StructuresPasteMethod_example4.png" alt="" data-size="original">

* 对比 `PasteMethod:SMOOTHED`

<img src="../../.gitbook/assets/StructuresPasteMethod_example5.png" alt="" data-size="original">

对于 SMOOTHED 粘贴方式（PasteMethod），还有一个额外的参数：`FillBias`（填充偏好）。它允许你指定工具应该尝试放置“更多”方块还是“更少”方块。这对于处理极薄的结构等情况特别有用。

假设现在这个弯曲的单层方块薄片是我们的剪贴板/结构文件。

<img src="../../.gitbook/assets/StructuresPasteMethod_example6.png" alt="" data-size="original">

以下是它在**以奇特角度**粘贴时的样子，当使用：

* `//paste` 或 `PasteMethod:FAST`

<img src="../../.gitbook/assets/StructuresPasteMethod_example7.png" alt="" data-size="original">

* 对比 `PasteMethod:SMOOTHED`

<img src="../../.gitbook/assets/StructuresPasteMethod_example9.png" alt="" data-size="original">

* 对比 `PasteMethod:SMOOTHED,FillBias:3`（默认 FillBias 为 1.0）

<img src="../../.gitbook/assets/StructuresPasteMethod_example8.png" alt="" data-size="original">

* 对比一段从 `Fillbias:`**`0.25`** 变化到 `Fillbias:`**`3.0`** 的 GIF 演示

<img src="../../.gitbook/assets/StructuresPasteMethod_example10.gif" alt="" data-size="original">

</details>