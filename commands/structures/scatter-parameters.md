# 散布参数

[`//ezscatter`](./#ezscatter) 和 [`//ezbrush scatter`](./#ezbrush-scatter) 在一个区域内放置多个结构。这些命令选择的位置可以通过本页面描述的参数进行自定义。

`scatter` 首先从由 `-h <region>` 定义的区域中提取所有表面方块（所有与空气接触的非空气方块）。你可以使用 `-d <directions>` & `-e <threshold>` 和 `-m <mask>` 过滤掉不符合特定条件的表面。在剩余的表面上，根据给定的密度 `-n <density>` 和均匀性 `-u <iterations>` 计算放置位置分布，然后放置结构。

***

### 散布区域: <mark style="color:orange;">`-h <region>`</mark>

确定放置位置被散布的区域。

* 默认值：
  * 对于 `//ezscatter`，为你当前选中的区域
    * <mark style="color:blue;">`-h Active(UseOriginalPosition:true)`</mark>
  * 或对于 `//ezbrush scatter`，为点击位置周围的 40x40x40 长方体区域。
    * <mark style="color:blue;">`-h Box(Dimensions:"40,40,40")`</mark>

可用选项：

* <mark style="color:orange;">**`Box`**</mark> (<mark style="color:orange;">**`B`**</mark>)：一个长方体区域。（命名为 Box 以便有单字母缩写）
* <mark style="color:orange;">**`Ellipsoid`**</mark> (<mark style="color:orange;">**`E`**</mark>)：一个椭球体区域
* <mark style="color:orange;">**`Cylinder`**</mark> (<mark style="color:orange;">**`C`**</mark>)：一个圆柱体区域
  * 前三个的尺寸可以使用 <mark style="color:blue;">**`Dimensions`**</mark> (<mark style="color:blue;">**`D`**</mark>) 参数设置，例如 `Box(Dimensions:"60,30,60")` 或 `B(D:"60,30,60")`。默认值为 `"40,40,40"`。
* <mark style="color:orange;">**`Saved`**</mark> (<mark style="color:orange;">**`S`**</mark>)：使用 `//ezsel save` 保存的选区。
  * 需要你定义 <mark style="color:blue;">**`Name`**</mark> (<mark style="color:blue;">**`N`**</mark>) 参数，从你保存的选区中选择一个。
* <mark style="color:orange;">**`Active`**</mark> (<mark style="color:orange;">**`A`**</mark>)：你当前选中的区域。
  * 与前三个区域选项不同，这最后两个选项在世界中有固有的位置。你可以选择通过将其移动到玩家位置 (`//ezsc`) 或点击的位置 (`//ezbr sc`) 来覆盖其位置，或使用 <mark style="color:blue;">**`UseOriginalPosition`**</mark> (<mark style="color:blue;">**`P`**</mark>) 参数来使用其固有位置。\
    `//ezsc` 的区域参数的默认值实际上是 `-h Active(UseOriginalPosition:true)`。如果你将其设置为 false，则命令将以区域移动到你的玩家位置的方式执行。
* 默认情况下，区域的中心位于目标位置。你可以使用 <mark style="color:blue;">**`Offset`**</mark> (<mark style="color:blue;">**`O`**</mark>) 参数定义偏移量，以相对于其目标位置移动它。默认值为 `(0,0,0)`。


> **示例：**
>
> 示例命令：`//ezbrush scatter Clipboard `**`-h <region>`**
>
> 演示动画
>
> * `-h Box`
> * `-h Cylinder`
> * `-h Saved(Name:$triangle)`
> * `-h Saved(Name:$triangle,Offset:(0,0,10))`
>
> 在同一位置使用笔刷一次后：
>
> <img src="../../.gitbook/assets/ScatterRegion_example1.gif" alt="" data-size="original">
>
> 其中 `$triangle` 只是我用 //ezsel 保存的某个3点多面体选区。
>
> 选区使用粉红色羊毛可视化以便清晰显示（使用 [-l 标志](scatter-parameters.md#mask-cover-block-b-less-than-pattern-greater-than)）。

***

### 方向过滤器：<mark style="color:orange;">`-d <directions>`</mark> 和 <mark style="color:orange;">`-e <threshold>`</mark>

启用过滤放置位置，使其仅在面向特定方向的表面上进行放置。

`-d <directions>` 参数定义了基本方向列表（上、下、北、东、南、西），放置位置所在的表面必须面向这些方向之一。如果放置位置不满足此条件，则不会在该处放置结构。

`-e <threshold>` 参数定义了放置位置处的表面法线必须与 `-d` 给定的任何方向对齐的程度。值越高，过滤效果越强。

`-d` 默认为空列表（无）。

`-e` 默认为 0.5。期望值范围为 -1 到 1。


> **示例**
>
> 示例命令: `//ezsc Clipboard S C `**`-d <directions> -e <threshold>`** (剪贴板为默认的香草橡木树)
>
> **`-d west,up`** (散布点必须位于朝向西方或向上的表面)![](../../.gitbook/assets/ScatterDirectionalFilter_example.png)
>
> **`-d up -e <threshold>`** (散布点必须位于朝向大致向上的表面)
>
> * 开始于 **`-e -1.0`** (最弱的过滤阈值，放置所有形状)
> * 暂停于 **`-e 0.0`** (一半的方向被过滤出)
> * 结束于 **`-e 1.0`** (最强的过滤阈值，不再放置任何形状)。
>
> <img src="../../.gitbook/assets/ScatterDirectionalFilter_demo.gif" alt="" data-size="original">

***

### 蒙版过滤器: <mark style="color:orange;">`-m <mask>`</mark>

启用过滤不匹配由 `-m <mask>` 给定的蒙版的放置位置。放置位置必须满足蒙版才能放置结构。

> **示例:**
>
> 示例命令: `//ezsc Clipboard S C `**`-m <mask>`** (剪贴板为默认的香草橡木树)
>
> 使用以下蒙版:
>
> * **`-m red`** (仅选择红色羊毛方块上的放置位置)
> * **`-m !red`** (仅选择除红色羊毛方块外任何方块上的放置位置)
> * **`-m =y>95`** (仅选择位于 y>95 以上的放置位置)
>
> <img src="../../.gitbook/assets/ScatterMaskFilter_demo.gif" alt="" data-size="original">

***

### 密度: <mark style="color:orange;">`-n <density>`</mark>

通过指定密度百分比来确定放置多少个结构。

密度值是一个百分比。它确定在多少百分比的表面方块上放置结构。具体来说，它确定在方向过滤器和蒙版过滤器应用 _之后_ 的位置的百分比。


更具体地说：设 _N_ 为剩余的表面方块数量（例如，如果未使用任何过滤器，则为 `//count [!air]&[~air]` 的结果），那么最终放置的结构数量等于 _N \* density / 100_。

注意：百分号是可选的。`0.5` 等于 `0.5%`。

> **示例：**
>
> 示例命令：**`//ezsc Clipboard C C -n <density>`**（剪贴板为默认的原版橡木树）
>
> **`-n 2%`**（默认值）或 **`-n 2`**（`%` 是可选的）：
>
> <img src="../../.gitbook/assets/ScatterDensity_example1.png" alt="" data-size="original">
>
> **`-n 0.5%`**
>
> <img src="../../.gitbook/assets/ScatterDensity_example2.png" alt="" data-size="original">
>
> **`-n 5%`**
>
> <img src="../../.gitbook/assets/ScatterDensity_example3.png" alt="" data-size="original">

{% hint style="info" %}
密度指定了**剩余**表面方块中放置结构的百分比。

例如，如果你使用蒙版过滤器将放置限制在特定方块上，而该方块在你的选区中很少出现，例如使用以下区域和 `-m sea_lantern`，

<img src="../../.gitbook/assets/ScatterDensityHint_example1.png" alt="" data-size="original">

那么 `-n 2%`（默认密度）意味着从所有海晶灯方块（接触空气的）中只有 2% 被选为放置位置。因此执行 `//ezsc Clipboard -m sea_lantern` 的结果是：

<img src="../../.gitbook/assets/ScatterDensityHint_example2.png" alt="" data-size="original">

对于这样的情况，如果你想在特定方块的每个实例处放置结构，你应该使用 `-n 100%`。在我们的示例中执行 `//ezsc Clipboard -m sea_lantern -n 100%` 会得到：

<img src="../../.gitbook/assets/ScatterDensityHint_example3.png" alt="" data-size="original">
{% endhint %}

***


### 分布种子: <mark style="color:orange;">`-i <seed>`</mark>

设置随机数生成器的种子，该生成器用于选择初始随机放置位置。

默认为 `-1`（随机种子），意味着每次执行 scatter 命令时放置位置都会不同。

***

### 均匀性: <mark style="color:orange;">`-u <iterations>`</mark>

决定所有放置位置的均匀分散程度。期望一个正整数，包括 0。

默认为 `15`。

均匀性算法的工作原理是从完全随机的放置位置开始，然后迭代地将所有位置彼此推开。此参数设置要执行的推开迭代次数。因此，0 表示您区域内的放置位置是完全随机的。

> **示例:**
>
> 示例命令: `//ezsc Clipboard C C `**`-u <iterations>`** (剪贴板为默认原版橡木树)
>
> * `-u 0` (完全随机分布)
> * `-u 2` (略微均匀分布)
> * `-u 20` (非常均匀分布)
>
> GIF 从 **`-u 0`** 开始到 **`-u 20`** 结束:
>
> <img src="../../.gitbook/assets/ScatterUniformity_demo.gif" alt="" data-size="original">

***

### 蒙版覆盖方块: <mark style="color:orange;">`-l <pattern>`</mark>

放置所有结构后，将区域内所有与蒙版过滤器 (`-m`) 匹配的未受影响的表面方块替换为给定的方块。(`-m` 必须设置才能使此标志生效。)

这是一个小众实用选项，用于在相邻区域多次应用 scatter 但不想在已经 scatter 过的区域放置结构的情况。因此，使用此标志，您可以（在工作流程中临时）用给定的方块覆盖您区域内的所有表面方块，使得任何与已覆盖区域重叠的后续 scatter 操作都不会放置结构，因为表面方块已被"覆盖"。


> 示例：
>
> `//ezbrush scatter Clipboard -m clay`
>
> 运行 ezbrush scatter **不使用** `-l` 标志会导致在点击区域重叠的地方密集放置，这可能不是所需的结果。
>
> <img src="../../.gitbook/assets/ScatterMaskCoverBlock_example1.gif" alt="" data-size="original">
>
> `//ezbrush scatter Clipboard -m clay -b pink`
>
> 运行 ezbrush scatter **使用** `-b pink`，其中粉红色羊毛在本例中只是某个随机方块，会覆盖受影响的区域，结合 `-m clay` 蒙版过滤器，后续的笔刷点击不会在那里放置任何新形状，即使区域重叠。
>
> <img src="../../.gitbook/assets/ScatterMaskCoverBlock_example2.gif" alt="" data-size="original">

***

### 修剪选区外部：<mark style="color:orange;">`-t`</mark>

默认情况下，`scatter` 将在当前选定区域内确定放置位置，但如果放置位置在当前选定区域的边界处，将在区域外放置方块。您可以使用此 `-t` 标志切断任何此类方块（防止它们被放置）。

启用此标志相当于使用 `//gmask #region` 运行命令（至少对于 `//ezscatter` 是这样）。

> 示例：
>
> 如果这是我们的选定区域：
>
> <img src="../../.gitbook/assets/ScatterTrimFlag_example1.png" alt="" data-size="original">
>
> 那么执行 ezsc 命令而不使用该标志会导致方块可能被放置在区域外。只有放置/原点位置被限制在区域内。
>
> 不使用 `-t` 标志：
>
> `//ezsc Cl C C -s 15,21,15 -n 0.5%`
>
> <img src="../../.gitbook/assets/ScatterTrimFlag_example2.png" alt="" data-size="original">
>
> 使用 `-t` 标志：
>
> `//ezsc Cl C C -s 15,21,15 -n 0.5% `**`-t`**
>
> <img src="../../.gitbook/assets/ScatterTrimFlag_example3.png" alt="" data-size="original">

***
