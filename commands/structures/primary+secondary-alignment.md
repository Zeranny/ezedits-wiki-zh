<!-- langmirror:chunk 0 -->
# 主要+次要对齐

对齐定义了结构放置的方向。

## 解释

每个结构都有一个内在的"上"方向和一个内在的"前"方向。默认情况下，结构放置时其上方向面向上方（+y），其前方向面向前方（+x）。

最重要的是，现在你可以通过定义结构的上方向和前方向应该面向何处来控制结构的放置方式。

我们让用户使用两个方向来定义对齐：

{% hint style="info" %}
`<primary>` 方向定义放置的 +y 方向。

`<secondary>` 方向与主要方向一起暗示放置的 +x 方向。

注意：主要和次要方向不能相同。
{% endhint %}

<details>

<summary>使用示例的更深入解释：</summary>

假设这是我们想要放置的建筑，例如将其作为当前的 WorldEdit 剪贴板。

<img src="../../.gitbook/assets/AlignmentGuide_example1.png" alt="" data-size="original">

作为参考，红色光束面向正 x（东），蓝色光束面向正 z（南），绿色光束面向正 y（上）。

现在我们想使用任何 ezEdits 结构命令以各种方向放置它。为此，我们可以定义 `<primary>` 和 `<secondary>` 方向。让我们通过几个这些参数分配的示例来了解发生了什么：

让我们将 `<primary>` 设置为 `up`，将 `<secondary>` 设置为 `east`（你可以为此使用[常数](primary+secondary-alignment.md#constant)模式。）（这些方向是默认方向）：

<img src="../../.gitbook/assets/AlignmentGuide_example1.png" alt="" data-size="original">

我们的形状以与复制时完全相同的方向粘贴。上仍然是上，右仍然是右，等等。

现在，考虑以下三个示例：

1. **`<primary>`** 设置为 **`south`**，`<secondary>` 保持在 `east`：

<img src="../../.gitbook/assets/AlignmentGuide_example2.png" alt="" data-size="original">

<!-- langmirror:chunk 1 -->
注意，原本复制时的_"上"_方向，即在我们的情况下绿色光束，现在指向我们设置的主方向：_南_。同时原本的_东_方向仍然是_东_。蓝色光束因此向下旋转了90°。

2. **`<primary>`** 设置为向量 **`(0,1,1)`**，即"斜向上和向南"的方向，`<secondary>` 设置为 `east`：

<img src="../../.gitbook/assets/AlignmentGuide_example3.png" alt="" data-size="original">

再次注意，原本复制时的_"上"_方向，即在我们的情况下绿色光束，现在指向我们设置的主方向：斜向上和向南。

3. **`<primary>`** 设置为向量 **`(1,1,0)`**，即斜向上和**向东**的方向，而 `<secondary>` 设置为 `east`：

<img src="../../.gitbook/assets/AlignmentGuide_example4.png" alt="" data-size="original">

绿色光束正确地沿着主方向指向，斜向上和向东。当我们 //copy 剪贴板时，原本指向_上_的任何方向总是与主方向设置的方向对齐！

但现在，即使次方向设置为_东_，红色光束也不再直接指向东方（而是斜向下和向东）。这是预期的行为。

想象一下，如果它指向东方：那么绿色和红色光束之间的角度将是45°而不是原始的90°角。我们的结构会被变形/弯曲/剪切。

我们决定实现的是，（在我们将结构的+y方向与给定的主方向对齐的同时）与其将结构的+x方向与给定的次方向对齐，我们选择最相似但仍垂直于主方向的方向。

所以，如果主方向和次方向不是完全垂直的，如上面的例子所示，次方向会被替换为最相似但仍垂直于主方向的向量！

仅供参考，这是一个小GIF，展示了对于设定的主方向，剩余的垂直次方向：

<!-- langmirror:chunk 2 -->
<img src="../../.gitbook/assets/AlignmentGuide_example5.gif" alt="" data-size="original">

最后再举一个例子：

**`<primary>`** 被设置为向量 **`(-1,2,-1)`**，即一个向上和西北方向的方向，而 **`<secondary>`** 被设置为 **`west`**：

<img src="../../.gitbook/assets/AlignmentGuide_example6.png" alt="" data-size="original">

如你所见，绿色光束（即我们复制时原本向上的方向）现在指向我们指定的 `northwest+2*up` 方向，而红色光束（即我们复制时原本向东的方向）现在尽可能地指向 `west`，同时仍保持与主方向垂直。

所有这些都独立于你当前的剪贴板。这是另一个结构，首先显示其原始方向，然后显示按照前面示例方式对齐后的放置效果。

<img src="../../.gitbook/assets/AlignmentGuide_example7.png" alt="" data-size="original"> <img src="../../.gitbook/assets/AlignmentGuide_example8.png" alt="" data-size="original">

你能看出为什么将主方向设置为 `(-1,2,-1)` 并将次方向设置为 `west` 会导致叶子以这样的方式定向吗？

***

顺便说一下，使用的命令是

`//ezbrush place Clipboard Constant(Direction:(-1,2,-1)) Constant(Direction:west)`

或者，如果你喜欢缩写，

`//ezbr pl Cl C(D:(-1,2,-1)) C(D:west)`

通过这个主方向 + 次方向系统，我们希望你能够在任何场景中轻松快速地为每个结构放置构建所需的 3D 方向。

</details>

## 概览

主方向和次方向可以设置为以下任一种：

<!-- langmirror:chunk 3 -->
<table data-view="cards" data-full-width="false"><thead><tr><th>名称</th><th>缩写</th><th>描述</th></tr></thead><tbody><tr><td><a href="primary+secondary-alignment.md#constant"><strong><code>Constant</code></strong></a></td><td><strong><code>C</code></strong></td><td>为所有放置显式设置常数方向。</td></tr><tr><td><a href="primary+secondary-alignment.md#random"><strong><code>Random</code></strong></a></td><td><strong><code>R</code></strong></td><td>每次放置的随机方向。</td></tr><tr><td><a href="primary+secondary-alignment.md#noise"><strong><code>Noise</code></strong></a></td><td><strong><code>N</code></strong></td><td>基于在放置位置处噪声函数评估的方向。</td></tr><tr><td><a href="primary+secondary-alignment.md#aim"><strong><code>Aim</code></strong></a></td><td><strong><code>A</code></strong></td><td>你的玩家准星方向。</td></tr><tr><td><a href="primary+secondary-alignment.md#playerrelative"><strong><code>PlayerRelative</code></strong></a></td><td><strong><code>P</code></strong></td><td>从放置位置指向当前玩家位置的方向。</td></tr><tr><td><a href="primary+secondary-alignment.md#surfacenormal"><strong><code>SurfaceNormal</code></strong></a></td><td><strong><code>S</code></strong></td><td>放置位置区域内的近似表面法线。</td></tr><tr><td><a href="primary+secondary-alignment.md#viewdiff"><strong><code>ViewDiff</code></strong></a></td><td><strong><code>V</code></strong></td><td>使用两次点击定义方向。仅限笔刷使用。</td></tr><tr><td><a href="primary+secondary-alignment.md#tangential"><strong><code>Tangential</code></strong></a></td><td><strong><code>T</code></strong></td><td>沿路径切线方向。仅限数组使用。</td></tr><tr><td><a href="primary+secondary-alignment.md#orthogonal"><strong><code>Orthogonal</code></strong></a></td><td><strong><code>O</code></strong></td><td>垂直于路径的方向。仅限数组使用。</td></tr></tbody></table>

<!-- langmirror:chunk 4 -->
## 设置

***

### 常数

为所有放置明确设置一个常数方向。

语法：<mark style="color:orange;">**`Constant`**</mark> 或 <mark style="color:orange;">**`Constant(Direction:<direction>)`**</mark>

缩写：<mark style="color:orange;">**`C`**</mark> 或 <mark style="color:orange;">**`C(D:<direction>)`**</mark>

如果你未指定 `<direction>`，则：

* 如果你设置的是 `<primary>`，默认方向为 **+y**。
* 如果你设置的是 `<secondary>`，默认方向为 **+x**。

有多种方式定义方向。可以使用坐标轴、基本方向、向量符号或玩家相对方向，如前进、左、右等。提示：你也可以使用简单的算术运算符将方向相加，例如 `east-z+(0,0.5,0)`。提示²：在末尾加上 `=` 以在输入时实时评估你的方向表达式。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezsc Clipboard C(D:(0,2,0)) C(D:east)`

<img src="../../.gitbook/assets/ConstantAlignment_example1.png" alt="" data-size="original">

`//ezsc Clipboard C(D:(-1,2,-1)) C(D:east)`

<img src="../../.gitbook/assets/ConstantAlignment_example2.png" alt="" data-size="original">

`//ezsc Clipboard C(D:(-1,2,-1)) C(D:-aim)`

<img src="../../.gitbook/assets/ConstantAlignment_example3.png" alt="" data-size="original">

</details>

***

### 随机

每次放置时使用随机方向。

语法：<mark style="color:orange;">**`Random`**</mark>

缩写：<mark style="color:orange;">**`R`**</mark>

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezsc Clipboard Constant Random`

<!-- langmirror:chunk 5 -->
* 仅将 `<secondary>` 设置为 Random，primary 保持指向上方
* 注意我们结构的向上方向（绿色光束）保持向上（primary 设置为 up），但由于 secondary 是 random，每次放置都会围绕 primary（本例中为 y 轴）随机旋转。

<img src="../../.gitbook/assets/RandomAlignment_demo1.png" alt="" data-size="original">

`//ezsc Clipboard Random Constant`

* 仅将 `<primary>` 设置为 Random，secondary 保持指向东方。
* 地形被替换为玻璃，以便更好地查看。
* 注意绿色光束现在面向各种方向，但红色光束在所有放置中大致指向东方。

<img src="../../.gitbook/assets/RandomAlignment_demo2.png" alt="" data-size="original">

`//ezsc Clipboard Random Random`

* 将两者都设置为 Random

<img src="../../.gitbook/assets/RandomAlignment_demo3.png" alt="" data-size="original">

</details>

***

### 噪声

基于在放置位置处评估噪声函数的方向。

语法：<mark style="color:orange;">**`Noise`**</mark> 或 <mark style="color:orange;">**`Noise(Noise:<noise>)`**</mark>

缩写：<mark style="color:orange;">**`N`**</mark> 或 <mark style="color:orange;">**`N(N:<noise>)`**</mark>

默认的 `<noise>` 是 `Perlin(Freq:0.01)`。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezsc Clipboard Constant Noise`

* 俯视图截图
* `<primary>` 仍然指向上方，仅 `<secondary>` 设置为 Noise。
* 默认噪声是 Perlin 噪声。

<img src="../../.gitbook/assets/NoiseAlignment_example2.png" alt="" data-size="original">

`//ezsc Clipboard Constant Noise(N:Vor(Freq:0.02,DistReturn:cell))`

* 与上面相同的场景，但使用[细胞噪声](https://en.wikipedia.org/wiki/Voronoi_diagram#/media/File:Coloured_Voronoi_3D_slice.svg)。
* 你可以看出每个单元格都有自己的随机方向。

<img src="../../.gitbook/assets/NoiseAlignment_example1.png" alt="" data-size="original">

</details>

***

### 瞄准

<!-- langmirror:chunk 6 -->
你的玩家瞄准方向。

语法：<mark style="color:orange;">**`Aim`**</mark>

缩写：<mark style="color:orange;">**`A`**</mark>

注意：对于笔刷，`Constant(Direction:aim)` 将使用笔刷绑定时的玩家瞄准方向，而 `Aim` 将在每次笔刷操作时使用玩家的瞄准方向。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezsc Clipboard Aim Constant`

* 如果我们将 `<primary>` 设置为 `Aim`，那么我们结构的上方向（示例中的绿色光束）将与我们当前玩家的瞄准方向对齐。
* 图片中包含了我的玩家模型作为参考。这是我执行命令时的看向位置。_瞄准方向在 F3+B 中用细蓝线可视化_

<img src="../../.gitbook/assets/AimAlignment_demo1.png" alt="" data-size="original"><img src="../../.gitbook/assets/AimAlignment_demo2.png" alt="" data-size="original">

</details>

***

### PlayerRelative

从放置位置指向当前玩家位置的方向。

语法：<mark style="color:orange;">**`PlayerRelative`**</mark>

缩写：<mark style="color:orange;">**`P`**</mark>

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezsc Clipboard PlayerRelative Constant`

* 如果你将 `<primary>` 设置为 `PlayerRelative`，那么每个结构的放置方式使其上方向指向你的玩家位置。
* 如果你仔细观察，可以在图片中看到我的玩家模型。那是我执行命令的位置。

<img src="../../.gitbook/assets/PlayerRelative_demo1.png" alt="" data-size="original"><img src="../../.gitbook/assets/PlayerRelative_demo2.png" alt="" data-size="original">

`//ezbr place Shape(S:Cone,P:diamond_block) PlayerRelative Constant -s 12,36,12`

<img src="../../.gitbook/assets/PlayerRelative_demo3.gif" alt="" data-size="original">

</details>

***

### SurfaceNormal

放置位置区域内的近似表面法线。

<!-- langmirror:chunk 7 -->
语法: <mark style="color:orange;">**`SurfaceNormal`**</mark>

缩写: <mark style="color:orange;">**`S`**</mark>

根据[法线](https://en.wikipedia.org/wiki/Normal_\(geometry\))，我们指的是垂直于相关地形的方向。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezbr place Shape(P:57,S:Cone) SurfaceNormal Constant -s 12,36,12`

当你持有笔刷时，你可以看到我们的游戏内对齐可视化工具根据你查看的地形部分动态调整方向。

<img src="../../.gitbook/assets/SurfaceNormal_demo1.gif" alt="" data-size="original">

</details>

***

### ViewDiff

通过两次点击定义方向。仅适用于笔刷。

语法: <mark style="color:orange;">**`ViewDiff`**</mark>

缩写: <mark style="color:orange;">**`V`**</mark>

每次放置需要一次右键点击和一次左键点击。第一次右键点击在目标方块处设置放置位置。然后左键点击其他地方定义方向：从你的第一个（右键）点击目标位置到你的第二个（左键）点击。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezbr place Clipboard SurfaceNormal ViewDiff`

这里我将主方向设置为 SurfaceNormal，并通过 ViewDiff 模式的第二次点击控制次方向。注意我的手。你可以看到我在右键和左键之间交替点击。右键点击设置放置位置，左键点击设置 ViewDiff 方向。我们的游戏内对齐可视化工具根据你的移动和操作动态更新。

<img src="../../.gitbook/assets/output.gif" alt="" data-size="original">

`//ezbr place Shape(S:Torus(Thickness:0.4),P:57) PlayerRelative ViewDiff -s 20,20,30 -k x -c 90`

<!-- langmirror:chunk 8 -->
这个圆环形状需要更多参数，所以这个示例比通常情况下要长一些。不过重要的是要注意主方向设置为 PlayerRelative，这意味着圆环的顶部始终面向玩家，次要方向设置为 ViewDiff，这意味着最终的方向由第二次点击决定。在这里，每次右键点击后，我在放置位置的上方和左/右交替左键点击，以创建一条链接的链条。

<img src="../../.gitbook/assets/output (1).gif" alt="" data-size="original">

</details>

***

### 切线方向

沿路径的切线方向。仅适用于数组。

语法：<mark style="color:orange;">**`Tangential`**</mark>

缩写：<mark style="color:orange;">**`T`**</mark>

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezarray Clipboard Tangential Constant -g 11 -o 2`

_切线方向_指向放置位置处样条路径的切线方向。如果将主方向设置为_切线方向_，形状的顶部将沿着样条指向，如下所示。

<img src="../../.gitbook/assets/TangentialAlignment_example1.png" alt="" data-size="original">

</details>

***

### 正交方向

垂直于路径的方向。仅适用于数组。

语法：<mark style="color:orange;">**`Orthogonal`**</mark> 或 <mark style="color:orange;">**`Orthogonal(Angle:<angle>)`**</mark>

缩写：<mark style="color:orange;">**`O`**</mark> 或 <mark style="color:orange;">**`O(A:<angle>)`**</mark>

角度以度数给出，定义正交方向的初始方向，其中 0° 和 360° 面向上方，90° 和 270° 面向左右，180° 面向下方（至少在样条的第一部分。如果法线模式设置为 CONSISTENT（默认设置），它可能会沿着进一步扭转）。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezarray Clipboard Orthogonal Constant`

<!-- langmirror:chunk 9 -->
**正交**方向指向垂直于样条路径在放置位置处的方向。如果将主方向设置为**正交**，形状的顶部将垂直于样条路径，如下所示。

<img src="../../.gitbook/assets/OrthogonalAlignment_example1.png" alt="" data-size="original">

以下是通过 `<angle>` 参数的 GIF：

<img src="../../.gitbook/assets/StructuresAlignmentsOrthogonal_example.gif" alt="" data-size="original">

`//ezarray Clipboard Orthogonal Constant -n HORIZONTAL`

[-n 标志](array-parameters.md#spline-orientation-n-less-than-normalmode-greater-than)对正交方向有直接影响。

<img src="../../.gitbook/assets/OrthogonalAlignment_example2.png" alt="" data-size="original">

</details>

***

## 参数

以下标志调整对齐方式的计算方式。

***

### 对齐到特定方向：<mark style="color:orange;">`[-j <snapDirections>]`</mark>

此参数允许您将选择的对齐方向限制为指定的子集。例如，对齐到/仅允许基本方向，即 90° 旋转。

可用选项：

<!-- langmirror:chunk 10 -->
* <mark style="color:orange;">**`MULTIPLES_90`**</mark>
  * 仅允许90°的倍数，即所有轴对齐方向。
* <mark style="color:orange;">**`MULTIPLES_45`**</mark>
  * 仅允许45°的倍数，即轴对齐方向和所有完美对角线。
* <mark style="color:orange;">**`MULTIPLES_22_5`**</mark>
  * 仅允许22.5°的倍数。
* <mark style="color:orange;">**`MULTIPLES_15`**</mark>
  * 仅允许15°的倍数。
* <mark style="color:orange;">**`DIAGONALS_1_1`**</mark>
  * 仅允许轴对齐方向和完美的"1:1"对角线。
* <mark style="color:orange;">**`DIAGONALS_2_1`**</mark>
  * 仅允许<mark style="color:orange;">`DIAGONALS_1_1`</mark>方向和任何"2:1"对角线。
* <mark style="color:orange;">**`DIAGONALS_3_1`**</mark>
  * 仅允许<mark style="color:orange;">`DIAGONALS_2_1`</mark>方向和任何"3:1"对角线。
* <mark style="color:orange;">**`DIAGONALS_4_1`**</mark>
  * 仅允许<mark style="color:orange;">`DIAGONALS_3_1`</mark>方向和任何"4:1"对角线。
* <mark style="color:orange;">**`DIAGONALS_5_1`**</mark>
  * 仅允许<mark style="color:orange;">`DIAGONALS_4_1`</mark>方向和任何"5:1"对角线。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezbrush Cl Constant ViewDiff -j MULTIPLES_45`

<img src="../../.gitbook/assets/AlignmentSnapToAngles_example.gif" alt="" data-size="original">

</details>

***

<!-- langmirror:chunk 11 -->
### 扰动次向量: <mark style="color:orange;">\[-x]</mark>

在我们的主向量+次向量系统中，如果两个向量共线（这意味着它们在同一条线上），放置会失败。

通过启用此标志，ezEdits 尝试通过对次向量方向进行微小扰动来规避这种情况。