<!-- langmirror:chunk 0 -->
# 放置参数

每当放置一个结构时，它都会经过以下流程（按此顺序）：

* [应用尺寸](placement-parameters.md#dimensions-s) (`-s`)
* [随机缩放](placement-parameters.md#random-scaling-o) (`-t`)
* [取向](placement-parameters.md#orientation-c-k) (`-c` 和 `-k`)
* [随机镜像](placement-parameters.md#random-flips-f) (`-f`)
* [随机 90° 旋转](placement-parameters.md#random-rotations-r) (`-r`)
* [**对齐**](primary+secondary-alignment.md) (`<primary>` 和 `<secondary>`)

ezEdits 允许你完全自定义此流程。括号中是分别应用于每个步骤的标志和参数。

***

### 控制尺寸：<mark style="color:orange;">`-s <dimensions>`</mark> <a href="#dimensions-s" id="dimensions-s"></a>

尺寸通过设置结构的包围盒大小来定义其放置规模。

标志 `-s <dimensions>` 用于设置放置时所需的绝对基础尺寸（覆盖默认值）。

默认情况下，基于表达式的结构尺寸为 `20,20,20`，而建筑文件/剪贴板结构则按其原始固有尺寸放置。

{% hint style="info" %}
根据你选择的数值，结构可能会出现**拉伸**或**压缩**。
{% endhint %}

<details>

<summary><mark style="color:blue;">示例</mark></summary>

例如，如果你的剪贴板固有尺寸为 5x7x5，那么将尺寸设置为 `-s 5,14,5` 将会使放置的结构沿 Y 轴拉伸：

第一张图：`//ezsc Clipboard -s 5,7,5`（原始剪贴板尺寸）

第二张图：`//ezsc Clipboard -s 5,14,5`

<img src="../../.gitbook/assets/PlacementDimensions_example1.png" alt="" data-size="original"> <img src="../../.gitbook/assets/PlacementDimensions_example2.png" alt="" data-size="original">

</details>

***

### 随机缩放：<mark style="color:orange;">`-o <sizeMultiplierRange>`</mark> <a href="#random-scaling-o" id="random-scaling-o"></a>

<!-- langmirror:chunk 1 -->
大多数结构命令会一次性放置多个结构。为了增加多样性，你可以为每次放置应用随机缩放。

`-o <sizeMultiplierRange>` 标志用于为每次放置应用随机缩放。你需要指定一个数值范围，系统会从中随机选择一个数字作为每次放置的缩放系数。

默认情况下，范围是 `1,1`，这意味着缩放系数始终为 1，即不产生任何效果。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

通过将范围设置为 `-o 0.5,2.0`，我们可以让剪贴板的放置大小在目标尺寸的一半到两倍之间随机变化。

`//ezsc Clipboard -o 0.5,2.0`

<img src="../../.gitbook/assets/PlacementRandomScaling_example.png" alt="" data-size="original">

（同一树木剪贴板以各种不同尺寸呈现）

</details>

***

### 随机镜像：<mark style="color:orange;">`-f <randomFlipsAxes>`</mark> <a href="#random-flips-f" id="random-flips-f"></a>

`-f <randomFlipsAxes>` 标志允许在每次放置时沿任意轴对结构进行随机镜像。

可用值为：

* None（默认）
* X
* Y
* Z
* XY
* XZ
* YZ
* XYZ

镜像处理在定向（orientation）之后、对齐（alignment）之前应用。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

第一张图：`//ezsc Clipboard`（无随机镜像）

第二张图：`//ezsc Clipboard -f XZ`（沿 X 轴和 Z 轴随机镜像，但不包含 Y 轴）

<img src="../../.gitbook/assets/PlacementRandomFlips_example1.png" alt="" data-size="original"> <img src="../../.gitbook/assets/PlacementRandomFlips_example2.png" alt="" data-size="original">

</details>

***

### 随机 90° 旋转：<mark style="color:orange;">`-r <randomRotationAxis>`</mark> <a href="#random-rotations-r" id="random-rotations-r"></a>

`-r <randomRotationAxis>` 标志允许在每次放置时沿任一轴对结构进行随机 90° 旋转。

可用值为：

<!-- langmirror:chunk 2 -->
* X
* Y
* Z

默认情况下，此参数未设置任何内容，即禁用随机旋转。

90° 旋转在朝向（orientation）之后但在对齐（alignment）之前应用。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

第一张图：`//ezsc Clipboard`（无随机旋转）

第二张图：`//ezsc Clipboard -r Y`（绕 Y 轴随机 90° 旋转）

<img src="../../.gitbook/assets/PlacementRandomRotations_example1.png" alt="" data-size="original"> <img src="../../.gitbook/assets/PlacementRandomRotations_example2.png" alt="" data-size="original">

</details>

***

### 朝向 (进阶): <mark style="color:orange;">`-k <orientationAxis>`</mark> 和 <mark style="color:orange;">`-c <orientationAngle>`</mark> <a href="#orientation-c-k" id="orientation-c-k"></a>

设置朝向意味着定义结构所拥有的内部坐标系。该坐标系随后将用于随机镜像/旋转以及对齐过程中。_定义朝向即是“定义哪边是上，哪边是前”_。

朝向通过旋转轴（`-k <direction>`）和旋转角度（`-c <angle>`）来设置。_其旋转方式与 `//ezd rotate` 完全一致_。

默认情况下，旋转轴 `-k` 为 `y` 或 `up`，旋转角度 `-c` 为 `0`，这表示不进行旋转。

例如，如果你将旋转轴设置为 `-k x` 且旋转角度设置为 `-c 90`，那么你的结构将向侧面旋转。它的东面现在将成为“向上方向”，以此类推。

***

### 放置空气: <mark style="color:orange;">`-a`</mark> <a href="#place-air-a" id="place-air-a"></a>

默认情况下，如果*没有*设置此标志，放置结构时会跳过空气方块。当设置了此标志时，结构内的空气方块将能够覆盖现有方块。

{% hint style="info" %}
此行为与 `//paste` 的 `-a` 标志相反。这可能会引起混淆，但我们认为这对于我们的命令来说更方便。
{% endhint %}