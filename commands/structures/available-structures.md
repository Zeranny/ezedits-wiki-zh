<!-- langmirror:chunk 0 -->
# 可用结构 (Available Structures)

在 ezEdits 的语境下，我们将 3D 空间中的方块排列称为“结构 (structure)”。上述每个命令都要求用户提供一个 `<structure>` 参数。

目前可用的结构有：

<details>

<summary><mark style="color:blue;"><strong>剪贴板 (Clipboard / Cl)</strong></mark></summary>

基于你当前的 WorldEdit 剪贴板 (//copy) 的结构。

语法：<mark style="color:orange;">`Clipboard`</mark>

缩写：<mark style="color:orange;">`Cl`</mark>

选项：

* <mark style="color:blue;">**Origin (O)**</mark>。默认为 INHERENT。
  * INHERENT (I) 将使用复制时的位置
  * CENTER (C) 将使用剪贴板的几何中心
* <mark style="color:blue;">**PasteMethod (PM**</mark><mark style="color:blue;">)</mark>。默认为 FAST。参见 [#comparison-between-fast-and-smooth-pastemethod](available-structures.md#comparison-between-fast-and-smooth-pastemethod "mention")
  * FAST (fast): 默认的、未修改的剪贴板粘贴方式，类似于 //paste
  * SMOOTHED (smooth): 当放置位置无法与世界网格匹配时（例如以 45° 旋转角度放置）应用插值。其外观更平滑，对于自由旋转的放置可能更理想。
  * 参见 [#comparison-between-fast-and-smooth-pastemethod](available-structures.md#comparison-between-fast-and-smooth-pastemethod "mention")

- 示例：<mark style="color:orange;">`Clipboard(Origin:INHERENT,PasteMethod:SMOOTHED)`</mark> <mark style="color:orange;"></mark><mark style="color:orange;">或</mark> <mark style="color:orange;"></mark><mark style="color:orange;">`Cl(O:I,PM:smooth)`</mark>

</details>

<details>

<summary><mark style="color:blue;"><strong>建筑文件 (Schematic / Sc)</strong></mark></summary>

基于建筑文件的结构。

语法：<mark style="color:orange;">`Schematic(Filename:<name>,...)`</mark>

<!-- langmirror:chunk 1 -->
缩写：<mark style="color:orange;">`Sc(N:<name>,...)`</mark>

必需参数：

* <mark style="color:orange;">**文件名 (N)**</mark>。要放置的建筑文件的文件名。

选项：

* <mark style="color:blue;">**格式 (F)**</mark>。建筑文件的格式。默认为 sponge.3（如果使用 FAWE，则为 FAWE 的 fast）。默认值应适用于大多数情况。
* <mark style="color:blue;">**原点 (O)**</mark>。默认为 INHERENT。
  * INHERENT (I) 将使用复制时的位置。
  * CENTER (C) 将改为使用剪贴板区域的中心作为原点。
* <mark style="color:blue;">**粘贴方法 (PM**</mark><mark style="color:blue;">)</mark>。默认为 FAST。&#x20;
  * FAST (fast)：默认的未改变的剪贴板粘贴，类似于 //paste
  * SMOOTHED (smooth)：当放置无法匹配到世界网格时应用插值，例如以 45° 旋转方向放置时。外观会更平滑，可能更适合自由旋转的放置。
  * 参见 [#comparison-between-fast-and-smooth-pastemethod](available-structures.md#comparison-between-fast-and-smooth-pastemethod "mention")&#x20;

</details>

<details>

<summary><mark style="color:blue;"><strong>形状 (Sh)</strong></mark></summary>

基于表达式的形状。EzEdits 提供了许多预定义的形状。材料由图案定义。

语法：<mark style="color:orange;">`Shape(Shape:<shape>,Pattern:<pattern>)`</mark>

缩写：<mark style="color:orange;">`Sh(S:<shape>,P:<pattern>)`</mark>

必需参数：

* <mark style="color:orange;">**`Shape`**</mark>（<mark style="color:orange;">**`S`**</mark>）。定义形状结构的形状。附加参数在之后的括号内给出。可用的形状有：
  * `Cone`
    
    ![](../../.gitbook/assets/StructuresShapesCone.png)

<!-- langmirror:chunk 2 -->
* `Crystal([Sides:<sides>],[Extrusion:<value>])`&#x20;
    
    ![](../../.gitbook/assets/StructuresShapesCrystal.gif)
  * `Cuboid`
    
    ![](../../.gitbook/assets/StructuresShapesCuboid.png)
  * `Curl`
    
    ![](../../.gitbook/assets/StructuresShapesCurl.png)
  * `Cylinder`
    
    ![](../../.gitbook/assets/StructuresShapesCylinder.png)
  * `Ellipsoid`
    
    ![](../../.gitbook/assets/StructuresShapesEllipsoid.png)
  * `Fur`
    
    ![](../../.gitbook/assets/StructuresShapesFur.png)
  * `Heart`
    
    ![](../../.gitbook/assets/StructuresShapesHeart.png)
  * `Jellybean`
    
    ![](../../.gitbook/assets/StructuresShapesJellybean.png)
  * `Leaf`
    
    ![](../../.gitbook/assets/StructuresShapesLeaf.png)
  * `Lemon`
    
    ![](../../.gitbook/assets/StructuresShapesLemon.png)
  * `Onion`
    
    ![](../../.gitbook/assets/StructuresShapesOnion.png)
  * `Polygon([Sides:<sides>])`
    
    ![](../../.gitbook/assets/StructuresShapesPolygon.gif)
  * `Pyramid([Sides:<sides>])`
    
    ![](../../.gitbook/assets/StructuresShapesPyramid.gif)
  * `Supersphere(Exponent:<exponent>)`
    
    ![](../../.gitbook/assets/StructuresShapesSupersphere.gif)
  * `Tetrahedron`
    
    ![](../../.gitbook/assets/StructuresShapesTetrahedron.png)
  * `Torus(Thickness:<value>)`
    
    ![](../../.gitbook/assets/StructuresShapesTorus.gif)
  * `=<expression>`
    
    * 除了预定义的形状外，你还可以使用 WorldEdit 表达式定义自己的形状。
    * 例如，这个表达式将创建螺旋体：\

<!-- langmirror:chunk 3 -->
<mark style="color:blue;">`Shape(S:`</mark><mark style="color:blue;">**`=x+=sin(2*pi*y)/2;z+=cos(2*pi*y)/2;x*x+z*z<0.3^2`**</mark><mark style="color:blue;">`,P:clay)`</mark>
* <mark style="color:orange;">**`Pattern`**</mark> (<mark style="color:orange;">**`P`**</mark>)。形状应该由其构成的图案。
  * 注意：作为参数一部分的逗号 `,` 会破坏输入解析器。如果你想使用包含逗号的图案，则需要将你的 Pattern 参数放在引号中：例如 <mark style="color:blue;">`Sh(S:Cone,Pattern:`</mark><mark style="color:blue;">**`"dirt,diamond_block"`**</mark><mark style="color:blue;">`)`</mark>



</details>

<details>

<summary><mark style="color:blue;"><strong>Expression (Ex)</strong></mark></summary>

基于表达式的形状。一个表达式同时定义形状和纹理。

语法：<mark style="color:orange;">`Expression(Expression:=<expression>,Palette:<palette>)`</mark>

缩写：<mark style="color:orange;">`Ex(E:=<expression>,P:<palette>)`</mark>

必需参数：

* <mark style="color:orange;">**Expression (E)**</mark>。输入变量为 `x`、`y` 和 `z`，均在 \[-1,1] 之间。`x=0`、`y=0`、`z=0` 是结构的原点。
  * 如果表达式 f(x,y,z) 的计算结果为 _f_≤_0_、0 或负数，则该位置将是空气。
  * 如果计算结果为 _1>f>0_、0 到 1 之间，则放置相应的调色板方块。&#x20;
  * 否则，任何 1 或更大的值都会放置最后一个调色板方块。
*   <mark style="color:orange;">**Palette (P)**</mark>。结构应该由其构成的方块集合。

<!-- langmirror:chunk 4 -->
* 注意：逗号 `,` 作为参数的一部分会破坏输入解析器。如果你想使用包含逗号的调色板，则需要将调色板参数放在引号中：例如 `Ex(E:=y*.5+.5,Palette:`**`"##GlowOrange,-##GlowPurple"`**`)`



</details>

<details>

<summary><mark style="color:blue;"><strong>纹理形状 (TS)</strong></mark></summary>

一个基于表达式的形状，具有基于表达式的纹理。形状参数定义其形状。调色板和纹理形状参数定义其材料。

语法：<mark style="color:orange;">`TexturedShape(Shape:<shape>,TexturingShape:<shape>,Palette:<palette>)`</mark>

缩写：<mark style="color:orange;">`TS(S:<shape>,T:<shape>,P:<palette>)`</mark>

必需参数：

* <mark style="color:orange;">**形状 (S)**</mark>。参见 [形状结构](available-structures.md#shape-sh)。
* <mark style="color:orange;">**纹理形状 (T)**</mark>。定义形状的哪些部分用调色板的哪些方块进行绘制。接受形状，就像形状参数一样。
*   <mark style="color:orange;">**调色板 (P)**</mark><mark style="color:orange;">。</mark>形状应由其组成的方块集合。

    * 注意：逗号 `,` 作为参数的一部分会破坏输入解析器。如果你想使用包含逗号的调色板，则需要将调色板参数放在引号中：例如 `TS(S:Cone,T:=y*.5+.5;Palette:`**`"dirt,diamond_block"`**`)`



</details>

***

### FAST 和 SMOOTH 粘贴方法的比较：

<details>

<summary><mark style="color:blue;">&#x3C;-   点击我</mark></summary>

假设这是我们的剪贴板或建筑文件：

![](../../.gitbook/assets/StructuresPasteMethod_example1.png)

以下是使用时在奇数角度粘贴时的外观

<!-- langmirror:chunk 5 -->
* `PasteMethod:FAST`
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example2.png)
* 对比 `PasteMethod:SMOOTHED`
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example3.png)

或者当粘贴的尺寸明显更大时：

* `PasteMethod:FAST`
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example4.png)
* 对比 `PasteMethod:SMOOTHED`
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example5.png)

SMOOTHED 粘贴方法还有一个额外参数：`FillBias`。它允许你指定工具应该尝试放置**更多**方块还是放置**更少**方块。这对于特别薄的结构等情况可能特别有帮助。

假设这是我们现在的剪贴板/原理图。

* 一个弯曲的单方块厚度的平面：
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example6.png)

使用 `//paste` 或以奇数角度粘贴时，它看起来会是这样：

* `PasteMethod:FAST`
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example7.png)
* 对比 `PasteMethod:SMOOTHED`
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example9.png)
* 对比 `PasteMethod:SMOOTHED,FillBias:3`（默认 FillBias 为 1.0）
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example8.png)
* 对比从 `Fillbias:`**`0.25`** 到 `Fillbias:`**`3.0`** 的 GIF
  
  ![](../../.gitbook/assets/StructuresPasteMethod_example10.gif)

</details>