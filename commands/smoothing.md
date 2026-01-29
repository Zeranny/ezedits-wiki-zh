<!-- langmirror:chunk 0 -->
# 平滑

### `//ezsmooth`

<details>

<summary>平滑</summary>

**`//ezsmooth <radii> <iterations> <bias> [-w <profile>]`**

**`别名: //ezsm`**

`//ezsmooth` 命令使用三维平滑算法平滑选区的边缘和表面。

* **Radii**: 平滑半径，可以是单个值，也可以是三个逗号分隔的值，分别对应东/西、上/下和北/南方向。此参数控制平滑效果的范围。
* **Iterations**: 平滑操作执行的次数。更多的迭代次数会产生更平滑的结果，但会增加处理时间。
* **Bias**: 介于 -1.0 和 1.0 之间的值,用于调整平滑效果的扩张或收缩。正值会扩张平滑区域,负值会收缩它。
* **-w**: 参见 [平滑方块](../smoothblocks/smoothblocks.md)。

</details>

### `//ezinflate`

<details>

<summary>膨胀</summary>

**`//ezinflate <radii> [-w <profile>]`**

**`别名: //inflate`**

`//ezinflate` 命令将选区内的方块体积按指定量扩张,有效地"膨胀"建筑。

* **Radii**: 指定扩张距离,可以是单个值,也可以是三个逗号分隔的值,分别对应东/西、上/下和北/南方向。此值决定了新的膨胀表面距离原始表面的距离。
* **-w**: 参见 [平滑方块](../smoothblocks/smoothblocks.md)。

</details>

### `//ezdeflate`

<details>

<summary>收缩</summary>

**`//ezdeflate <radii> [-w <profile>]`**

**`别名: //deflate`**

`//ezdeflate` 命令将选区内的方块体积按指定量收缩,有效地"收缩"建筑。

<!-- langmirror:chunk 1 -->
* **Radii**: 指定扩展距离，可以是单个值，也可以是三个逗号分隔的值，分别对应东/西、上/下和北/南方向。此值决定了从原始表面向内移除方块的距离。
* **-w**: 参见 [Smoothblocks](../smoothblocks/smoothblocks.md)。

</details>

### `//ezsmoothblocks` (v0.15.0 及以上版本)

<details>

<summary>平滑方块</summary>

**`//ezsmoothblocks <profile> <radius> <bias>`**

**`别名: //ezsb`**

`//ezsmoothblocks` 命令通过放置台阶、楼梯和墙来修改选定区域，以创建明显更平滑的表面。

* **Profile**: 决定使用的塑形方块集合。参见 [#profiles](../smoothblocks/smoothblocks.md#profiles "mention")。

- **Radius**: 以方块为单位指定平滑半径。此值决定了在平滑过程中考虑每个方块周围的区域。值越大，平滑效果越激进。

* **Bias**: 介于 -1.0 和 1.0 之间的值，用于调整平滑效果，决定添加或移除多少方块。正值会导致放置的方块多于移除的方块，而负值会移除更多方块而不是添加。
* **-w**: 参见 [Smoothblocks](../smoothblocks/smoothblocks.md)。

</details>

#### `//ezsmoothblocks` (v0.14.0 及更早版本)

<details>

<summary>平滑方块（旧版）</summary>

**`//ezsmoothblocks <radius> <iterations> <bias> [-s] [-t] [-w]`**

**`别名: //smoothblocks`**

`//ezsmoothblocks` 命令通过放置台阶、楼梯和墙来修改选定区域，以创建明显更平滑的表面。

<!-- langmirror:chunk 2 -->
* **Radius**: 指定平滑半径（以方块为单位）。此值决定了在平滑过程中每个方块周围考虑的区域。
* **Iterations**: 平滑操作执行的次数。更多的迭代次数会产生更平滑的结果，但会增加处理时间。
* **Bias**: 介于 -1.0 和 1.0 之间的值，用于调整平滑效果的扩张或收缩。正值倾向于扩大平滑区域，而负值则收缩它，从而控制最终外观。
* **-s**: 将平滑过程限制为仅使用台阶。
* **-t**: 从平滑中排除墙壁。
* **-w**: 使用替代方块集。

</details>

***