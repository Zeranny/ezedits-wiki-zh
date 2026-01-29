<!-- langmirror:chunk 0 -->
# Placement

## Overview

ezEdits 提供了多种方式来快速且精确地放置剪贴板、建筑文件（schematics）以及基于表达式的形状，我们统称这些为“结构（structures）”。

相关的命令与笔刷（于 0.12.0 版本引入）如下：

<!-- langmirror:chunk 1 -->
<table data-card-size="large" data-view="cards" data-full-width="false"><thead><tr><th>命令 / 笔刷</th><th>缩写</th><th>描述</th><th>语法</th><th>参数</th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td><mark style="color:orange;"><strong><code>//ezplace</code></strong></mark></td><td><mark style="color:orange;"><strong><code>//ezpl</code></strong></mark></td><td>在<strong>玩家位置</strong>放置<strong>单个</strong>结构。</td><td><code>//ezplace</code> <a href="available-structures.md"><code>&#x3C;structure></code></a> <a href="primary+secondary-alignment.md"><code>[&#x3C;primary>][&#x3C;secondary>]</code></a></td><td>接受 <a data-mention href="placement-parameters.md">placement-parameters.md</a>。</td><td></td></tr><tr><td><mark style="color:orange;"><strong><code>//ezbrush place</code></strong></mark></td><td><mark style="color:orange;"><strong><code>//ezbr pl</code></strong></mark></td><td>在每次<strong>笔刷点击的目标点</strong>放置<strong>单个</strong>结构的笔刷。</td><td><code>//ezbrush place</code> <a href="available-structures.md"><code>&#x3C;structure></code></a> <a href="primary+secondary-alignment.md"><code>[&#x3C;primary>] [&#x3C;secondary>]</code></a></td><td>接受 <a data-mention href="placement-parameters.md">placement-parameters.md</a>。</td><td></td></tr><tr><td><mark style="color:orange;"><strong><code>//ezscatter</code></strong></mark></td><td><mark style="color:orange;"><strong><code>//ezsc</code></strong></mark></td><td>在<strong>选定区域</strong>内<strong>散布</strong>（放置多个）结构。</td><td><code>//ezscatter</code><a href="available-structures.md"><code>&#x3C;structure></code></a> <a href="primary+secondary-alignment.md"><code>[&#x3C;primary>] [&#x3C;secondary>]</code></a></td><td>接受 <a data-mention href="placement-parameters.md">placement-parameters.md</a> 和 <a data-mention href="scatter-parameters.md">scatter-parameters.md</a>。</td><td></td></tr><tr><td><mark style="color:orange;"><strong><code>//ezbrush scatter</code></strong></mark></td><td><mark style="color:orange;"><strong><code>//ezbr sc</code></strong></mark></td><td>在每次<strong>笔刷点击的目标区域</strong>内放置<strong>多个</strong>结构的笔刷。</td><td><code>//ezbrush scatter</code><a href="available-structures.md"><code>&#x3C;structure></code></a> <a href="primary+secondary-alignment.md"><code>[&#x3C;primary>] [&#x3C;secondary>]</code></a></td><td>接受 <a data-mention href="placement-parameters.md">placement-parameters.md</a> 和 <a data-mention href="scatter-parameters.md">scatter-parameters.md</a>。</td><td></td></tr><tr><td><mark style="color:orange;"><strong><code>//ezarray</code></strong></mark></td><td><mark style="color:orange;"><strong><code>//ezar</code></strong></mark></td><td><strong>沿路径</strong>顺次放置<strong>多个</strong>结构。</td><td><code>//ezarray</code><a href="available-structures.md"><code>&#x3C;structure></code></a> <a href="primary+secondary-alignment.md"><code>[&#x3C;primary>][&#x3C;secondary>]</code></a></td><td>接受 <a data-mention href="placement-parameters.md">placement-parameters.md</a> 和 <a data-mention href="array-parameters.md">array-parameters.md</a>。</td><td></td></tr><tr><td><mark style="color:orange;"><strong><code>//ezbrush array</code></strong></mark></td><td><mark style="color:orange;"><strong><code>//ezbr ar</code></strong></mark></td><td><strong>沿笔刷笔触</strong>放置<strong>多个</strong>结构的笔刷。</td><td><code>//ezbrush array</code><a href="available-structures.md"><code>&#x3C;structure></code></a> <a href="primary+secondary-alignment.md"><code>[&#x3C;primary>] [&#x3C;secondary>]</code></a></td><td>接受 <a data-mention href="placement-parameters.md">placement-parameters.md</a> 和 <a data-mention href="array-parameters.md">array-parameters.md</a>。</td><td></td></tr></tbody></table>

<!-- langmirror:chunk 2 -->
所有六个命令都基于相同的底层放置方法。因此，所有六个命令都共享相同的语法和参数。

{% hint style="info" %}
为了完整起见，用户还可以通过 ezspline 子命令 `//ezspline structure` (`//ezsp structure`) 将结构或结构数组嵌入到形状样条线中。然而，与其说这些结构是被“放置”的，不如说它们是被嵌入到样条路径中的，这意味着 [对齐设置](primary+secondary-alignment.md) 和 [放置参数](placement-parameters.md) 不适用于该命令。这就是为什么它被记录在 [样条线页面](../spline/) 的原因。
{% endhint %}

***

## 子页面结构

本放置维基包含多个子页面。以下是各子页面的概览。

{% hint style="info" %}
我们建议更仔细地阅读 [**主对齐与次对齐**](primary+secondary-alignment.md) 页面，因为它涵盖了工具的核心概念之一。其余章节可以作为参考资料，在执行特定任务或深入了解工具功能时使用。
{% endhint %}

* [**可用结构**](available-structures.md)
  * 涵盖了 [`<structure>`](available-structures.md) 参数（place/scatter/array 以及 ezspline structure 命令必需）。
* [**主对齐与次对齐**](primary+secondary-alignment.md)
  * 涵盖了 [`[<primary>] [<secondary>]`](primary+secondary-alignment.md) 参数（适用于 place/scatter/array）以及随附的标志：
    * [`[-j <snapDirections>]`](primary+secondary-alignment.md#snap-to-angles-j)
    * [`[-x]`](primary+secondary-alignment.md#perturb-secondary-x)
* [**放置参数**](placement-parameters.md)
  * 涵盖了以下标志（适用于 place/scatter/array）：
    * [`[-s <dimensions>]`](placement-parameters.md#dimensions-s)
    * [`[-o <sizeMultiplierRange>]`](placement-parameters.md#random-scaling-o)
    * [`[-c <orientationAngle>] [-k <orientationAxis>]`](placement-parameters.md#orientation-c-k)
    * [`[-f <randomFlipsAxes>]`](placement-parameters.md#random-flips-f)

<!-- langmirror:chunk 3 -->
    * [`[-r <randomRotationAxis>]`](placement-parameters.md#random-rotations-r)
    * [`[-a]`](placement-parameters.md#place-air-a)
* [**散布参数**](scatter-parameters.md)
  * 涵盖以下标志（仅适用于 scatter）：
    * [`[-h <region>]`](scatter-parameters.md#scatter-region-h)
    * [`[-d <filterDirections>] [-e <filterThreshold>]`](scatter-parameters.md#directional-filter-d-e)
    * [`[-m <maskFilter>]`](scatter-parameters.md#mask-filter-m)
    * [`[-n <density>]`](scatter-parameters.md#density-n)
    * [`[-i <seed>]`](scatter-parameters.md#distribution-seed-i)
    * [`[-u <iterations>]`](scatter-parameters.md#uniformity-u)
    * [`[-l <coverPattern>]`](scatter-parameters.md#mask-cover-pattern-l)
    * [`[-t]`](scatter-parameters.md#trim-outside-selection-t)
* [**数组参数**](array-parameters.md)
  * 涵盖以下标志（仅适用于 array）：
    * [`[-g <gap>]`](array-parameters.md#distance-g)
    * [`[-y <maxOffset>]`](array-parameters.md#max-vertical-offset-y)
    * [`[-q <radiiMultiplier>]`](array-parameters.md#progressive-scaling-q)
    * [`[-p <kbParameters>]`](array-parameters.md#path-parameters-p)
    * [`[-n <normalMode>]`](array-parameters.md#spline-orientation-n)
    * [`[-b]`](array-parameters.md#snap-to-surfaces-b)

### 附加参数

* 适用于 place/scatter/array：
  * [`[-w <smoothblocks>]`](../../smoothblocks/smoothblocks.md)&#x20;

<details>

<summary>这里是<em>相同</em>的标志<em>再次</em>列出，但按字母顺序排列：</summary>

<!-- langmirror:chunk 4 -->
* [`[-a]`](placement-parameters.md#place-air-a)
* [`[-b]`](array-parameters.md#snap-to-surfaces-b)
* [`[-c <orientationAngle>]`](placement-parameters.md#orientation-c-k)
* [`[-d <filterDirections>]`](scatter-parameters.md#directional-filter-d-e)
* [`[-e <filterThreshold>]`](scatter-parameters.md#directional-filter-d-e)
* [`[-f <randomFlipsAxes>]`](placement-parameters.md#random-flips-f)
* [`[-g <gap>]`](array-parameters.md#distance-g)
* [`[-h <region>]`](scatter-parameters.md#scatter-region-h)
* [`[-i <seed>]`](scatter-parameters.md#distribution-seed-i)
* [`[-j <restrictedAngles>]`](primary+secondary-alignment.md#snap-to-angles-j)
* [`[-k <orientationAxis>]`](placement-parameters.md#orientation-c-k)
* [`[-l <coverPattern>]`](scatter-parameters.md#mask-cover-pattern-l)
* [`[-m <maskFilter>]`](scatter-parameters.md#mask-filter-m)
* [`[-n <density>]`](scatter-parameters.md#density-n)
* [`[-n <normalMode>]`](array-parameters.md#spline-orientation-n)
* [`[-o <sizeMultiplierRange>]`](placement-parameters.md#random-scaling-o)
* [`[-p <kbParameters>]`](array-parameters.md#path-parameters-p)
* [`[-q <radiiMultiplier>]`](array-parameters.md#progressive-scaling-q)
* [`[-r <randomRotationAxis>]`](placement-parameters.md#random-rotations-r)
* [`[-s <dimensions>]`](placement-parameters.md#dimensions-s)
* [`[-t]`](scatter-parameters.md#trim-outside-selection-t)
* [`[-u <iterations>]`](scatter-parameters.md#uniformity-u)
* [`[-w <smoothblocks>]`](../../smoothblocks/smoothblocks.md)&#x20;
* [`[-x]`](primary+secondary-alignment.md#perturb-secondary-x)
* [`[-y <maxOffset>]`](array-parameters.md#max-vertical-offset-y)

</details>

***

<!-- langmirror:chunk 5 -->
{% hint style="warning" %}
服务器管理员请注意：这三种放置笔刷会生成 BlockDisplay 实体（仅对使用笔刷的玩家可见），以帮助可视化笔刷的 [Alignment](primary+secondary-alignment.md)。你可以在 `config.yml` 的 `visualisations` 配置项下完全禁用可视化实体，或更改它们的更新频率。

此外，如果由于某种原因实体未被正常清除（理论上不会发生，但以防万一），可以使用命令 `//ezdebug removeVisualiserEntities` 从世界中移除任何由 ezEdits 生成的实体。
{% endhint %}

***