# Smoothing

### `//ezsmooth`

<details>

<summary>平滑</summary>

**`//ezsmooth <radii> <iterations> <bias>`**

**`别名: //ezsm`**

`//ezsmooth` 命令使用三维平滑算法来平滑选定区域的边缘和表面。

* **Radii**: 平滑半径，可以是一个值或三个逗号分隔的值，分别用于东西、上下和南北方向。此参数控制平滑效果的范围。
* **Iterations**: 执行平滑操作的次数。更多的迭代次数会导致更平滑的结果，但会增加处理时间。
* **Bias**: 在 -1.0 和 1.0 之间的值，调整平滑效果的扩展或收缩。正值扩展平滑区域，负值收缩平滑区域。

</details>

### `//ezinflate`

<details>

<summary>膨胀</summary>

**`//ezinflate <radius>`**

**`别名: //inflate`**

`//ezinflate` 命令通过指定的量扩展选定区域内的方块体积，有效地“膨胀”建筑。

* **Radius**: 指定以方块为单位的扩展距离。此值决定从原始表面创建新的膨胀表面的距离。

</details>

### `//ezdeflate`

<details>

<summary>收缩</summary>

**`//ezdeflate <radius>`**

**`别名: //deflate`**

`//ezdeflate` 命令通过指定的量收缩选定区域内的方块体积，有效地“收缩”建筑。

* **Radius**: 指定以方块为单位的收缩距离。此值决定从原始表面向内移除方块的距离。

</details>

### `//ezsmoothblocks`

<details>

<summary>半方块过渡</summary>

**`//ezsmoothblocks <radius> <iterations> <bias> [-s] [-t] [-w]`**

**`别名: //smoothblocks`**

`//ezsmoothblocks` 命令通过放置台阶、楼梯和墙壁来修改选定区域，以创建显著更平滑的表面。

* **Radius**: 指定以方块为单位的平滑半径。此值决定在平滑过程中考虑的每个方块周围的区域。
* **Iterations**: 执行平滑操作的次数。更多的迭代次数会导致更平滑的结果，但会增加处理时间。
* **Bias**: 在 -1.0 和 1.0 之间的值，调整平滑效果的扩展或收缩。正值倾向于扩展平滑区域，负值收缩平滑区域，提供对最终外观的控制。
* **-s**: 限制平滑过程仅使用台阶。
* **-t**: 排除墙壁平滑。
* **-w**: 使用另一组方块。

</details>

