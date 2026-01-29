<!-- langmirror:chunk 0 -->
# 通用参数

以下参数和标志适用于 **所有** `//ezspline` 子命令。

***

### 半径渐变：<mark style="color:orange;">`<radii>`</mark> <a href="#radii" id="radii"></a>

定义样条线的粗细（路径）。

**可接受的值为：** 一个或多个以逗号分隔的条目，其中每个条目可以是：

1. 一个 **半径值**（例如：`10`，`6.9`）。半径值必须大于 0。
2. 一个 **位置与半径**，以冒号分隔，其中位置是 0 到 1 之间的十进制小数（例如：`0:10`，`0.5:15.5`）。

其中，如果指定了 _位置_，则每个位置必须严格递增，且第一个和最后一个条目的位置必须分别为 `0` 和 `1`。如果省略了位置，它们将被自动设置并插值。

例如：

* `0.5:10`_`,`_`2` 是非法的，因为 _第一个_ 条目（位置始终为 `0.0`）被指定为了位置“`0.5`”。
* `5`_`,`_`0.6:10`_`,`_`15`_`,`_`0.4:20`_`,`_`5` 是非法的，因为位置不是严格递增的（0.4 出现在 0.6 之后）。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezsp rope clay`` `**`<radii>`**

单个半径条目：GIF 展示从 `//ezsp rope clay`` `**`5`** 变化到 `//ezsp rope clay`` `**`10`**：

<img src="../../.gitbook/assets/SplinesRadii_example1.gif" alt="" data-size="original">

两个半径条目：`//ezsp rope clay`` `**`1,12`**。样条线以半径 1 开始，并逐渐变粗，到末端达到半径 12：

<img src="../../.gitbook/assets/SplinesRadii_example2.png" alt="" data-size="original">

<!-- langmirror:chunk 1 -->
三个半径条目：`//ezsp rope clay` `**1,12,1**`。样条曲线以半径 1 开始，并逐渐变大，直到样条曲线的中点（路径的 50%）达到 12，然后向末端移动时恢复到半径 1：

<img src="../../.gitbook/assets/SplinesRadii_example3.png" alt="" data-size="original">

由于第一个和最后一个值始终定义样条曲线的起点和终点半径，并且中间所有未指定的对应位置都会被插值，这意味着当你执行命令时，`1,12,1`（未指定位置）会被扩展为 **`0`**`:1,`**`0.5`**`:12,`**`1`**`:1`。当然，你也可以自行指定位置。

使用命令 `//ezsp rope clay` `**1,0.1:12,1**`，并从 `1,`**`0.1`**`:12,1` 变化到 `1,`**`0.9`**`:12,1`。这会在整个样条曲线中移动半径为 12 条目的“关键帧位置”（起点和终点仍固定为半径 1）：

<img src="../../.gitbook/assets/SplinesRadii_example4.gif" alt="" data-size="original">

多个半径条目：`//ezsp rope clay 2,10,2,12,2,10,2`。你可以定义任意数量的条目及其各自的位置：

<img src="../../.gitbook/assets/SplinesRadii_example5.png" alt="" data-size="original">

</details>

***

### Kochanek-Bartels 参数：<mark style="color:orange;">`-p <kbParameters>`</mark> <a href="#kb-parameters" id="kb-parameters"></a>

用于控制样条曲线流向的参数。决定了样条曲线通过给定节点位置时采取的路径。

默认值为 `0:0:0`。

请按此顺序提供以冒号分隔的 `<tension>:<bias>:<continuity>`。每个参数的预期取值范围为 `[-1..1]`。

<!-- langmirror:chunk 2 -->
{% hint style="info" %}
[这张图表](https://en.wikipedia.org/wiki/Kochanek%E2%80%93Bartels_spline#/media/File:Kochanek_bartels_spline.svg)展示了每个参数的作用。

（注意：图表中的顺序 (c,t,b) 与 ezspline 要求的顺序 (t,b,c) 不同。）
{% endhint %}

<details>

<summary><mark style="color:blue;">示例：</mark></summary>

`//ezsp polygon clay 10 4`` `**`-p <kbParameters>`**

**`-p 0:0:0`**

<img src="../../.gitbook/assets/SplinesKBParameters_example1.png" alt="" data-size="original">

**`-p 0:-1:0`**

<img src="../../.gitbook/assets/SplinesKBParameters_example2.png" alt="" data-size="original">

**`-p -1:0:0`**

<img src="../../.gitbook/assets/SplinesKBParameters_example4.png" alt="" data-size="original">

**`-p 0:1:0`**

<img src="../../.gitbook/assets/SplinesKBParameters_example3.png" alt="" data-size="original">

</details>

***

### 质量 (Quality): <mark style="color:orange;">`-q <quality>`</mark> (v0.13.0 或更高版本) <a href="#quality" id="quality"></a>

决定生成样条曲线形状的精确度，在精确度和运行时间之间进行权衡。

共有四种模式：

1. <mark style="color:orange;">`FAST`</mark> (比 balanced 快约 1.5 倍)
2. <mark style="color:orange;">`BALANCED`</mark>
3. <mark style="color:orange;">`HIGH`</mark> (比 balanced 慢约 3 倍)
4. <mark style="color:orange;">`EXACT`</mark> (甚至更慢...)

默认为 <mark style="color:orange;">`BALANCED`</mark>（它可以相对快速地生成近乎完美的结果）。

<details>

<summary><mark style="color:blue;">示例 (适用于 v0.13.0 或更高版本)</mark></summary>

`//ezspline rope clay 10`` `**`-q <quality>`**

<!-- langmirror:chunk 3 -->
`-q BALANCED`\
![](../../.gitbook/assets/SplinesQuality_BALANCED.png)

`-q FAST`\
![](../../.gitbook/assets/SplinesQuality_FAST.png)

</details>

***

### 质量 (Quality): <mark style="color:orange;">`-q <quality>`</mark> (v0.12.0 或更旧版本) <a href="#quality_old" id="quality_old"></a>

{% hint style="info" %}
v0.13.0 引入了一种显著更好且更快的样条曲线算法。此部分仅适用于仍在使用 ezEdits 0.12.0 或更旧版本的用户。新版本的行为请参阅[上方](common-parameters.md#quality)。
{% endhint %}

设置每个方块在每个维度上的形状采样数量。必须大于 0。

默认为 `2.0`（可以较快地生成效果平平的结果）。

如果出现空气间隙，或出现噪点/不平滑的外观，请将质量设置为更高的值，例如 `-q 5.0`。

{% hint style="warning" %}
`-q` 参数的值越高，处理时间会显著增加。虽然较小的值（例如 `-q 2`）相对较快，但较大的值（例如 `-q 10`）可能需要数分钟。此外，超过一定数值后，增加 `-q` 值带来的收益会递减。我们建议在测试参数时使用 2，在最终放置渲染时使用 4-6。
{% endhint %}

<details>

<summary><mark style="color:blue;">示例 (适用于 v0.12.0 或更旧版本)</mark></summary>

`//ezspline beads clay 10`` `**`-q <quality>`**

GIF 从 `-q 1` 开始并增加到 `-q 7`。

<img src="../../.gitbook/assets/SplinesQuality_example.gif" alt="" data-size="original">

在此示例中，`-q 2` 耗时不到一秒，而 `-q 7` 运行耗时 20 秒。

</details>

***

### 初始翻滚角 (Initial roll): <mark style="color:orange;">`-r <startRoll>`</mark> 或 <mark style="color:orange;">`-r <startRoll>,<endRoll>`</mark> <a href="#roll" id="roll"></a>

<!-- langmirror:chunk 4 -->
允许围绕样条轴旋转样条形状，即滚动（Rolling）。参数应为以度为单位的角度。

默认为 `0`。

有两种方式来扭曲/滚动你的样条：

* 你可以使用 `-r` 定义起始滚动角度，并使用 `-t` 定义扭曲角度，从而实现单位长度的恒定扭曲。
* 或者通过向 `-r` 传递两个以逗号分隔的角度来定义起始滚动角度和结束滚动角度。如果这样做，`-t` 将被忽略。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezspline 2d Re(Y1:-0.2,Y2:0.2) clay 10`` `**`-r <angle>`**

GIF 从 `-r 0` 开始并移动到 `-r 180`。

<img src="../../.gitbook/assets/SplinesRollParameter.gif" alt="" data-size="original">

</details>

***

### 拉伸（Stretch）: <mark style="color:orange;">`-s <stretchFactor>`</mark> <a href="#stretch" id="stretch"></a>

允许沿样条路径的方向拉伸或压缩样条形状。

默认为 `1`。

{% hint style="info" %}
注意：`//ezspline structure` 和 `//ezspline expressions` 的 `-z` 标志会覆盖此标志。如果开启了 `-z`，则 `-s` 不起作用。
{% endhint %}

<details>

<summary><mark style="color:blue;">示例：</mark></summary>

`//ezsp 3d Chainlink clay 10`` `**`-s <stretchFactor>`**

GIF 从 `-s 0.2` 开始，在 `-s 1` 处短暂暂停，并增加到 `-s 4`。

<img src="../../.gitbook/assets/SplinesStretchParameter.gif" alt="" data-size="original">

</details>

***

### 扭曲（Twist）: <mark style="color:orange;">`-t <angle>`</mark> <a href="#twist" id="twist"></a>

定义沿样条线扭曲形状的幅度。输入值为以度为单位的角度。

默认为 `0`。（`//ezsp rope` 除外，其默认值为 90）

<!-- langmirror:chunk 5 -->
具体说明：角度决定了形状在样条线当前直径的长度内旋转的幅度。这意味着，如果直径为 30 个方块，那么在路径长度经过 30 个方块后，形状将旋转给定的角度。

如果你向 `-r` 同时传递了起始角度和结束角度，则此参数将被忽略。

<details>

<summary><mark style="color:blue;">示例：</mark></summary>

`//ezsp 2d Polygon(S:4) clay 10`` `**`-t <angle>`**

GIF 从 `-t 0` 开始，一直增加到 `-t 90`。

<img src="../../.gitbook/assets/SplinesTwist_example.gif" alt="" data-size="original">

</details>

***

### 法线模式：<mark style="color:orange;">`-n <normalMode>`</mark> <a href="#normal-mode" id="normal-mode"></a>

共有三种模式：

1. <mark style="color:orange;">`CONSISTENT`</mark> 旨在通过在曲线中“滚动”样条形状，使外观看起来平滑且一致。
2. <mark style="color:orange;">`HORIZONTAL`</mark> 防止样条形状“侧向滚动”，保持其初始朝向。
3. <mark style="color:orange;">`UPRIGHT`</mark> 使样条内部形状的 y 轴与世界的 y 轴保持一致。

默认值为 <mark style="color:orange;">`CONSISTENT`</mark>。

<details>

<summary><mark style="color:blue;">示例：</mark></summary>

`//ezspline expression black,red,blue,white,yellow 5 -o`` `**`-n <normalMode>`**` ``((z%2)>1.5?5:2*(x>0)+(y>0))+0.001`

`-n CONSISTENT`：默认值。样条线以平滑的方式沿路径弯曲。到末端时，可以观察到累积了明显的滚动量。（在起始处 white+red 是顶面，而到末端时 white+blue 位于顶部 -> 样条线发生了“滚动”）。

<!-- langmirror:chunk 6 -->
<img src="../../.gitbook/assets/SplinesNormalMode_example1.png" alt="" data-size="original"><img src="../../.gitbook/assets/SplinesKBParameters_example7.png" alt="" data-size="original">

`-n HORIZONTAL`：样条线尝试使原本朝上的表面保持向上，防止自身“侧翻”。你可以看到，在整个样条线中，白色+红色的面始终朝上。

<img src="../../.gitbook/assets/SplinesNormalMode_example2.png" alt="" data-size="original"><img src="../../.gitbook/assets/SplinesKBParameters_example8.png" alt="" data-size="original">

`-n UPRIGHT`：内部 y 轴始终与世界的 y 轴保持一致，而不是垂直于路径。请注意，现在的黄色条纹不是垂直于路径，而是完全垂直于地面的。

<img src="../../.gitbook/assets/SplinesNormalMode_example3.png" alt="" data-size="original"><img src="../../.gitbook/assets/SplinesKBParameters_example9.png" alt="" data-size="original">

**另一个更显着的例子（相同的命令，不同的路径）：**

`-n CONSISTENT`

<img src="../../.gitbook/assets/SplinesNormalMode_example4.png" alt="" data-size="original">

`-n HORIZONTAL`：样条线在陡峭/垂直路段会被强制扭转以保持水平。（在这里，它总是尝试将白色+红色的表面置于顶部）。

<img src="../../.gitbook/assets/SplinesNormalMode_example5.png" alt="" data-size="original">

`-n UPRIGHT`：正如你所料，当样条线的 y 轴完全垂直时，它在处理陡峭/垂直的路径段时表现不佳……

<img src="../../.gitbook/assets/SplinesNormalMode_example6.png" alt="" data-size="original">

</details>

***

### 结束样式：<mark style="color:orange;">`-e <endMode>`</mark> <a href="#end-style-e" id="end-style-e"></a>

设置样条线两端的形状。

共有五种模式：

<!-- langmirror:chunk 7 -->
1. <mark style="color:orange;">`FLAT`</mark> 样条曲线在路径的精确终点处突然结束。
2. <mark style="color:orange;">`SOFT`</mark> 样条曲线以柔和的形状结束，切入样条内部，在末端以平滑的方式逐渐变细。
3. <mark style="color:orange;">`SPIKE`</mark> 样条曲线以一个超出路径终点的圆锥体结束。
4. <mark style="color:orange;">`ROUND`</mark> 样条曲线以一个超出路径终点的半球体结束。
5. <mark style="color:orange;">`CUBE`</mark> 样条曲线以一个超出路径终点的立方体形状结束。

默认值为 <mark style="color:orange;">`FLAT`</mark>。

<details>

<summary><mark style="color:blue;">示例</mark></summary>

`//ezsp rope ice 15 6`` `**`-e <endMode>`**

`-e FLAT`\
![](../../.gitbook/assets/SplinesEndMode_FLAT1.png)

`-e SOFT`\
![](../../.gitbook/assets/SplinesEndMode_SOFT1.png)\\

`-e SPIKE`\
![](../../.gitbook/assets/SplinesEndMode_SPIKE1.png)\\

`-e ROUND`\
![](../../.gitbook/assets/SplinesEndMode_ROUND1.png)\\

`-e CUBE`\
![](../../.gitbook/assets/SplinesEndMode_CUBE1.png)

红石块线条显示了所使用的凸面选区。

`//ezsp 2d square ice 15`` `**`-e <endMode>`**

`-e FLAT`\
![](../../.gitbook/assets/SplinesEndMode_FLAT2.png)

`-e SOFT`\
![](../../.gitbook/assets/SplinesEndMode_SOFT2.png)

`-e SPIKE`\
![](../../.gitbook/assets/SplinesEndMode_SPIKE2.png)

`-e ROUND`\
![](../../.gitbook/assets/SplinesEndMode_ROUND2.png)

`-e CUBE`\
![](../../.gitbook/assets/SplinesEndMode_CUBE2.png)

</details>

***

<!-- langmirror:chunk 8 -->
### 平滑方块 (Smoothblocks): <mark style="color:orange;">`-w <smoothblocks>`</mark> <a href="#help-page" id="help-page"></a>

请参阅 [smoothblocks.md](../../smoothblocks/smoothblocks.md "mention")。

***

### 游戏内帮助页面: <mark style="color:orange;">`-h`</mark> <a href="#help-page" id="help-page"></a>

打印游戏内帮助页面。等同于 `//help ezspline ...` 的快捷方式。

***