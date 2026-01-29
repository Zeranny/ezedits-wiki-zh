<!-- langmirror:chunk 0 -->
# 结构命令

## 概述

ezEdits 提供了多种快速放置剪贴板、建筑文件和基于表达式的形状的方法，这些都被归类为"结构"。

相关命令和笔刷（在版本 0.12.0 中引入）如下：

<table data-column-title-hidden data-view="cards" data-full-width="false"><thead><tr><th>命令 / 笔刷</th><th>描述</th></tr></thead><tbody><tr><td><a href="./#ezplace"><code>//ezplace</code> (<code>//ezpl</code>)</a></td><td>在<strong>玩家位置</strong>放置<strong>单个</strong>结构。</td></tr><tr><td><a href="./#ezscatter"><code>//ezscatter</code> (<code>//ezsc</code>)</a></td><td>在<strong>选定区域</strong>内放置<strong>多个</strong>结构。</td></tr><tr><td><a href="./#ezarray"><code>//ezarray</code> (<code>//ezar</code>)</a></td><td>沿<strong>路径</strong>顺序放置<strong>多个</strong>结构。</td></tr><tr><td><a href="./#ezbrush-place"><code>//ezbrush place</code> (<code>//ezbr pl</code>)</a></td><td>笔刷，在每个<strong>笔刷点击的目标</strong>处放置<strong>单个</strong>结构。</td></tr><tr><td><a href="./#ezbrush-scatter"><code>//ezbrush scatter (//ezbr sc)</code></a></td><td>笔刷，在每个<strong>笔刷点击的目标</strong>区域内放置<strong>多个</strong>结构。</td></tr><tr><td><a href="./#ezbrush-array"><code>//ezbrush array</code> (<code>//ezbr ar</code>)</a></td><td>笔刷，沿<strong>笔刷笔画</strong>放置<strong>多个</strong>结构。</td></tr></tbody></table>

所有六个命令都基于相同的底层放置方法。因此，所有六个命令共享相同的语法和参数。


<!-- langmirror:chunk 1 -->
{% hint style="info" %}
为了完整起见，还可以使用 ezspline 子命令 `//ezspline structure`（`//ezsp structure`）将结构或结构数组嵌入到形状样条曲线中。但是，结构不是被"放置"，而是被嵌入到样条曲线路径中，这意味着[对齐设置](primary+secondary-alignment.md)和[放置参数](placement-parameters.md)不适用于该命令。因此，它在[样条曲线页面](../spline/)上有文档说明。
{% endhint %}

***

## 命令

本部分列出了所有结构命令的语法，并链接到相应的部分。

***

### `//ezplace`

别名：`//ezpl`

在**玩家位置**放置**单个**结构。

`//ezplace` [`<structure>`](available-structures.md) [`[<primary>] [<secondary>]`](primary+secondary-alignment.md) [`[-s <dimensions>]`](placement-parameters.md#controlling-dimensions-s-less-than-dimensions-greater-than) [`[-o <sizeMultiplierRange>]`](placement-parameters.md#random-scaling-o-less-than-sizemultiplierrange-greater-than) [`[-c <orientationAngle>] [-k <orientationAxis>]`](placement-parameters.md#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great) [`[-f <randomFlipsAxes>]`](placement-parameters.md#random-flips-f-less-than-randomflipsaxes-greater-than) [`[-r <randomRotationAxis>]`](placement-parameters.md#random-90-rotations-r-less-than-randomrotationaxis-greater-than) [`[-a]`](placement-parameters.md#place-air-a)

### `//ezbrush place`

别名：`//ezbr pl`

在每个**笔刷点击目标**放置**单个**结构的笔刷。


<!-- langmirror:chunk 2 -->
`//ezbrush place` [`<structure>`](available-structures.md) [`[<primary>] [<secondary>]`](primary+secondary-alignment.md) [`[-s <dimensions>]`](./#controlling-dimensions-s-less-than-dimensions-greater-than) [`[-o <sizeMultiplierRange>]`](./#random-scaling-o-less-than-sizemultiplierrange-greater-than) [`[-c <orientationAngle>] [-k <orientationAxis>]`](./#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great) [`[-f <randomFlipsAxes>]`](./#random-flips-f-less-than-randomflipsaxes-greater-than) [`[-r <randomRotationAxis>]`](placement-parameters.md#random-90-rotations-r-less-than-randomrotationaxis-greater-than) [`[-a]`](placement-parameters.md#place-air-a)

***

### `//ezscatter`

别名：`//ezsc`

在**选定区域**内放置**多个**结构。


<!-- langmirror:chunk 3 -->
`//ezscatter` [`<structure>`](available-structures.md) [`[<primary>] [<secondary>]`](primary+secondary-alignment.md) [`[-s <dimensions>]`](./#controlling-dimensions-s-less-than-dimensions-greater-than) [`[-o <sizeMultiplierRange>]`](./#random-scaling-o-less-than-sizemultiplierrange-greater-than) [`[-c <orientationAngle>] [-k <orientationAxis>]`](./#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great) [`[-f <randomFlipsAxes>]`](./#random-flips-f-less-than-randomflipsaxes-greater-than) [`[-r <randomRotationAxis>]`](placement-parameters.md#random-90-rotations-r-less-than-randomrotationaxis-greater-than) [`[-h <region>]`](scatter-parameters.md#scatter-region-h-less-than-region-greater-than) [`[-d <filterDirections>] [-e <filterThreshold>]`](scatter-parameters.md#directional-filter-d-less-than-directions-greater-than-and-e-less-than-threshold-greater-than) [`[-m <maskFilter>]`](scatter-parameters.md#mask-filter-m-less-than-mask-greater-than) [`[-n <density>]`](scatter-parameters.md#density-n-less-than-density-greater-than) [`[-i <seed>]`](scatter-parameters.md#distribution-seed-i-less-than-seed-greater-than) [`[-u <iterations>]`](scatter-parameters.md#uniformity-u-less-than-iterations-greater-than) [`[-l <coverPattern>]`](scatter-parameters.md#mask-cover-block-b-less-than-pattern-greater-than) [`[-a]`](placement-parameters.md#place-air-a) [`[-t]`](scatter-parameters.md#cut-off-outside-the-selection-c)&#x20;

### `//ezbrush scatter`

别名：`//ezbr sc`

在每次**笔刷点击目标**的区域内放置**多个**结构的笔刷。


<!-- langmirror:chunk 4 -->
`//ezbrush scatter` [`<structure>`](available-structures.md) [`[<primary>] [<secondary>]`](primary+secondary-alignment.md) [`[-s <dimensions>]`](./#controlling-dimensions-s-less-than-dimensions-greater-than) [`[-o <sizeMultiplierRange>]`](./#random-scaling-o-less-than-sizemultiplierrange-greater-than) [`[-c <orientationAngle>] [-k <orientationAxis>]`](./#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great) [`[-f <randomFlipsAxes>]`](./#random-flips-f-less-than-randomflipsaxes-greater-than) [`[-r <randomRotationAxis>]`](placement-parameters.md#random-90-rotations-r-less-than-randomrotationaxis-greater-than) [`[-h <region>]`](scatter-parameters.md#scatter-region-h-less-than-region-greater-than) [`[-d <filterDirections>] [-e <filterThreshold>]`](scatter-parameters.md#directional-filter-d-less-than-directions-greater-than-and-e-less-than-threshold-greater-than) [`[-m <maskFilter>]`](scatter-parameters.md#mask-filter-m-less-than-mask-greater-than) [`[-n <density>]`](scatter-parameters.md#density-n-less-than-density-greater-than) [`[-i <seed>]`](scatter-parameters.md#distribution-seed-i-less-than-seed-greater-than) [`[-u <iterations>]`](scatter-parameters.md#uniformity-u-less-than-iterations-greater-than) [`[-l <coverPattern>]`](scatter-parameters.md#mask-cover-block-b-less-than-pattern-greater-than) [`[-a]`](placement-parameters.md#place-air-a) [`[-t]`](scatter-parameters.md#cut-off-outside-the-selection-c)&#x20;

***

### `//ezarray`

别名：`//ezar`

沿路径**依次**放置**多个**结构。


<!-- langmirror:chunk 5 -->
`//ezarray` [`<structure>`](available-structures.md) [`[<primary>] [<secondary>]`](primary+secondary-alignment.md) [`[-s <dimensions>]`](placement-parameters.md#controlling-dimensions-s-less-than-dimensions-greater-than) [`[-o <sizeMultiplierRange>]`](placement-parameters.md#random-scaling-o-less-than-sizemultiplierrange-greater-than) [`[-c <orientationAngle>] [-k <orientationAxis>]`](placement-parameters.md#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great) [`[-f <randomFlipsAxes>]`](placement-parameters.md#random-flips-f-less-than-randomflipsaxes-greater-than) [`[-r <randomRotationAxis>]`](placement-parameters.md#random-90-rotations-r-less-than-randomrotationaxis-greater-than) [`[-g <gap>]`](array-parameters.md#distance-g-less-than-gap-greater-than) [`[-q <radiiMultiplier>]`](array-parameters.md#progressive-scaling-q-less-than-radii-greater-than) [`[-p <kbParameters>]`](array-parameters.md#path-parameters-p-less-than-kbparameters-greater-than) [`[-n <normalMode>]`](array-parameters.md#spline-orientation-n-less-than-normalmode-greater-than) [`[-a]`](placement-parameters.md#place-air-a) [`[-b]`](array-parameters.md#snap-placements-to-surfaces-b)

### `//ezbrush array`

别名：`//ezbr ar`

沿着**笔刷笔画**放置**多个**结构的笔刷。


<!-- langmirror:chunk 6 -->
`//ezbrush array` [`<structure>`](available-structures.md) [`[<primary>] [<secondary>]`](primary+secondary-alignment.md) [`[-s <dimensions>]`](placement-parameters.md#controlling-dimensions-s-less-than-dimensions-greater-than) [`[-o <sizeMultiplierRange>]`](placement-parameters.md#random-scaling-o-less-than-sizemultiplierrange-greater-than) [`[-c <orientationAngle>] [-k <orientationAxis>]`](placement-parameters.md#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great) [`[-f <randomFlipsAxes>]`](placement-parameters.md#random-flips-f-less-than-randomflipsaxes-greater-than) [`[-r <randomRotationAxis>]`](placement-parameters.md#random-90-rotations-r-less-than-randomrotationaxis-greater-than) [`[-g <gap>]`](array-parameters.md#distance-g-less-than-gap-greater-than) [`[-q <radiiMultiplier>]`](array-parameters.md#progressive-scaling-q-less-than-radii-greater-than) [`[-p <kbParameters>]`](array-parameters.md#path-parameters-p-less-than-kbparameters-greater-than) [`[-n <normalMode>]`](array-parameters.md#spline-orientation-n-less-than-normalmode-greater-than) [`[-a]`](placement-parameters.md#place-air-a) [`[-b]`](array-parameters.md#snap-placements-to-surfaces-b)

***

{% hint style="info" %}
服务器管理员注意：这三个结构笔刷会生成 BlockDisplay 实体（仅对使用笔刷的玩家可见），以帮助可视化笔刷的[对齐方式](primary+secondary-alignment.md)。您可以在 `config.yml` 的 `visualisations` 部分完全禁用可视化实体或更改其更新频率。

此外，命令 `//ezdebug removeVisualiserEntities` 将删除 ezEdits 在您的世界中生成的任何实体，以防万一它们出现故障且未正确消失，这种情况不应该发生，但以防万一。
{% endhint %}

***

## 子页面结构

此结构 Wiki 包含多个子页面。以下是子页面的概览。


<!-- langmirror:chunk 7 -->
{% hint style="info" %}
我们建议更仔细地阅读 [**主要+次要对齐**](primary+secondary-alignment.md) 页面，因为它涵盖了工具的基本概念之一。其余章节可以作为参考材料，对特定任务或深入了解工具功能很有用。
{% endhint %}

* [**可用结构**](available-structures.md)
  * 涵盖 [`<structure>`](available-structures.md) 参数（place/scatter/array（以及 ezspline 结构）必需）。
* [**主要+次要对齐**](primary+secondary-alignment.md)
  * 涵盖 [`[<primary>] [<secondary>]`](primary+secondary-alignment.md) 参数（适用于 place/scatter/array）和附带的标志：
    * [`[-j <snapDirections>]`](primary+secondary-alignment.md#snap-to-angles-j-less-than-anglesset-greater-than)
    * [`[-x]`](primary+secondary-alignment.md#perturb-secondary-x)
* [**放置参数**](placement-parameters.md)
  * 涵盖以下标志（适用于 place/scatter/array）：
    * [`[-s <dimensions>]`](placement-parameters.md#controlling-dimensions-s-less-than-dimensions-greater-than)
    * [`[-o <sizeMultiplierRange>]`](placement-parameters.md#random-scaling-o-less-than-sizemultiplierrange-greater-than)
    * [`[-c <orientationAngle>] [-k <orientationAxis>]`](placement-parameters.md#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great)
    * [`[-f <randomFlipsAxes>]`](placement-parameters.md#random-flips-f-less-than-randomflipsaxes-greater-than)
    * [`[-r <randomRotationAxis>]`](placement-parameters.md#random-90-rotations-r-less-than-randomrotationaxis-greater-than)
    * [`[-a]`](placement-parameters.md#place-air-a)
* [**散布参数**](scatter-parameters.md)
  * 涵盖以下标志（仅适用于 scatter）：
    * [`[-h <region>]`](scatter-parameters.md#scatter-region-h-less-than-region-greater-than)

<!-- langmirror:chunk 8 -->
* [`[-d <filterDirections>] [-e <filterThreshold>]`](scatter-parameters.md#directional-filter-d-less-than-directions-greater-than-and-e-less-than-threshold-greater-than)
    * [`[-m <maskFilter>]`](scatter-parameters.md#mask-filter-m-less-than-mask-greater-than)
    * [`[-n <density>]`](scatter-parameters.md#density-n-less-than-density-greater-than)
    * [`[-i <seed>]`](scatter-parameters.md#distribution-seed-i-less-than-seed-greater-than)
    * [`[-u <iterations>]`](scatter-parameters.md#uniformity-u-less-than-iterations-greater-than)
    * [`[-l <coverPattern>]`](scatter-parameters.md#mask-cover-block-b-less-than-pattern-greater-than)
    * [`[-t]`](scatter-parameters.md#trim-outside-selection-t)
* [**数组参数**](array-parameters.md)
  * 涵盖以下标志（仅适用于数组）：
    * [`[-g <gap>]`](array-parameters.md#distance-g-less-than-gap-greater-than)
    * [`[-q <radiiMultiplier>]`](array-parameters.md#progressive-scaling-q-less-than-radii-greater-than)
    * [`[-p <kbParameters>]`](array-parameters.md#path-parameters-p-less-than-kbparameters-greater-than)
    * [`[-n <normalMode>]`](array-parameters.md#spline-orientation-n-less-than-normalmode-greater-than)
    * [`[-b]`](array-parameters.md#snap-placements-to-surfaces-b)

<details>

<summary>以下是<em>相同的</em>标志，但按<em>字母顺序</em>排列：</summary>

* [`[-a]`](placement-parameters.md#place-air-a)
* [`[-b]`](array-parameters.md#snap-placements-to-surfaces-b)
* [`[-c <orientationAngle>]` ](placement-parameters.md#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great)
* [`[-d <filterDirections>]`](scatter-parameters.md#directional-filter-d-less-than-directions-greater-than-and-e-less-than-threshold-greater-than)

<!-- langmirror:chunk 9 -->
* [`[-e <filterThreshold>]`](scatter-parameters.md#directional-filter-d-less-than-directions-greater-than-and-e-less-than-threshold-greater-than)
* [`[-f <randomFlipsAxes>]`](placement-parameters.md#random-flips-f-less-than-randomflipsaxes-greater-than)
* [`[-g <gap>]`](array-parameters.md#distance-g-less-than-gap-greater-than)
* [`[-h <region>]`](scatter-parameters.md#scatter-region-h-less-than-region-greater-than)
* [`[-i <seed>]`](scatter-parameters.md#distribution-seed-i-less-than-seed-greater-than)
* [`[-j <restrictedAngles>]`](primary+secondary-alignment.md#snap-to-angles-j-less-than-anglesset-greater-than)
* [`[-k <orientationAxis>]`](placement-parameters.md#orientation-advanced-k-less-than-orientationaxis-greater-than-and-c-less-than-orientationangle-great)
* [`[-l <coverPattern>]`](scatter-parameters.md#mask-cover-block-b-less-than-pattern-greater-than)
* [`[-m <maskFilter>]`](scatter-parameters.md#mask-filter-m-less-than-mask-greater-than)
* [`[-n <density>]`](scatter-parameters.md#density-n-less-than-density-greater-than)
* [`[-n <normalMode>]`](array-parameters.md#spline-orientation-n-less-than-normalmode-greater-than)
* [`[-o <sizeMultiplierRange>]`](placement-parameters.md#random-scaling-o-less-than-sizemultiplierrange-greater-than)
* [`[-p <kbParameters>]`](array-parameters.md#path-parameters-p-less-than-kbparameters-greater-than)
* [`[-q <radiiMultiplier>]`](array-parameters.md#progressive-scaling-q-less-than-radii-greater-than)
* [`[-r <randomRotationAxis>]`](placement-parameters.md#random-90-rotations-r-less-than-randomrotationaxis-greater-than)
* [`[-s <dimensions>]`](placement-parameters.md#controlling-dimensions-s-less-than-dimensions-greater-than)
* [`[-t]`](scatter-parameters.md#trim-outside-selection-t)
* [`[-u <iterations>]`](scatter-parameters.md#uniformity-u-less-than-iterations-greater-than)&#x20;

<!-- langmirror:chunk 10 -->
* [`[-x]`](primary+secondary-alignment.md#perturb-secondary-x)

</details>

***