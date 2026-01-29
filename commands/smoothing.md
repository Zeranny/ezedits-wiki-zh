<!-- langmirror:chunk 0 -->
# 平滑处理 (Smoothing)

### `//ezsmooth`

<details>

<summary>平滑 (Smooth)</summary>

**`//ezsmooth <半径> <迭代次数> <偏向> [-w <预设>]`**

**`别名: //ezsm`**

`//ezsmooth` 指令使用三维平滑算法来平滑选区的边缘和表面。

* **半径 (Radii)**: 平滑操作的半径。可以是一个数值，也可以是三个由逗号分隔的数值（分别对应 X、Y、Z 轴）。该参数控制平滑效果的影响范围。
* **迭代次数 (Iterations)**: 执行平滑操作的次数。迭代次数越多，结果越平滑，但计算时间也越长。
* **偏向 (Bias)**: 介于 -1.0 到 1.0 之间的值，用于调整平滑效果是向外扩张还是向内收缩。正值会使平滑区域扩张，负值则会收缩。
* **-w**: 详见 [平滑方块](../smoothblocks/smoothblocks.md)。

</details>

### `//ezinflate`

<details>

<summary>膨胀 (Inflate)</summary>

**`//ezinflate <半径> [-w <预设>]`**

**`别名: //inflate`**

`//ezinflate` 指令将选区内的方块体积按指定距离向外扩张，从而实现对建筑的"膨胀"效果。

* **半径 (Radii)**: 指定扩张的距离。可以是一个数值，也可以是三个由逗号分隔的数值（分别对应 X、Y、Z 轴）。该数值决定了新表面偏离原始表面的距离。
* **-w**: 详见 [平滑方块](../smoothblocks/smoothblocks.md)。

</details>

### `//ezdeflate`

<details>

<summary>收缩 (Deflate)</summary>

**`//ezdeflate <半径> [-w <预设>]`**

**`别名: //deflate`**

`//ezdeflate` 指令将选区内的方块体积按指定距离向内收缩。

<!-- langmirror:chunk 1 -->
* **半径 (Radii)**: 指定收缩的距离。可以是一个数值，也可以是三个由逗号分隔的数值（分别对应 X、Y、Z 轴）。该数值决定了从原始表面向内移除方块的深度。
* **-w**: 详见 [平滑方块](../smoothblocks/smoothblocks.md)。

</details>

### `//ezsmoothblocks` (v0.15.0 及以上版本)

<details>

<summary>平滑方块 (SmoothBlocks)</summary>

**`//ezsmoothblocks <预设> <半径> <偏向>`**

**`别名: //ezsb`**

`//ezsmoothblocks` 指令通过在选区内智能放置台阶、楼梯和墙等方块，创造出更加平滑且具有细节的表面。

* **预设 (Profile)**: 决定使用的方块集合（如石质、木质等）。详见 [#预设](../smoothblocks/smoothblocks.md#profiles "mention")。

- **半径 (Radius)**: 指定平滑计算的半径（单位：方块）。该值决定了计算平滑度时考虑的周围区域大小。值越大，平滑效果越明显。

* **偏向 (Bias)**: 介于 -1.0 到 1.0 之间的值，用于微调平滑效果，决定添加或移除方块的倾向。正值倾向于放置更多方块，负值则倾向于移除。
* **-w**: 详见 [平滑方块](../smoothblocks/smoothblocks.md)。

</details>

#### `//ezsmoothblocks` (v0.14.0 及更早版本)

<details>

<summary>平滑方块（旧版）</summary>

**`//ezsmoothblocks <半径> <迭代次数> <偏向> [-s] [-t] [-w]`**

**`别名: //smoothblocks`**

`//ezsmoothblocks` 指令通过放置台阶、楼梯和墙来平滑选定区域。

<!-- langmirror:chunk 2 -->
* **半径 (Radius)**: 指定平滑计算的半径。（以方块为单位）
* **迭代次数 (Iterations)**: 平滑操作执行的次数。更多的迭代次数会产生更平滑的结果，但会增加处理时间。
* **偏向 (Bias)**: 介于 -1.0 到 1.0 之间的值，控制最终外观的扩张或收缩感。
* **-s**: 限制平滑过程仅使用台阶。
* **-t**: 在平滑过程中不使用墙。
* **-w**: 使用备选方块集。

</details>

***
