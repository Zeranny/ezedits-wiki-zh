# 区域操作

一组在选定区域内操作的杂项命令。

### `//ezvines`

<details>

<summary>藤蔓</summary>

**`//ezvines <mask> <pattern> [percentage] [min_length] [max_length]`**

**`别名: //vines`**

* **Mask**: 指定匹配方块的蒙板以悬挂“藤蔓”。
* **Pattern**: 确定要放置的方块模式。
* **Percentage** (默认值: 10%): 设置悬挂藤蔓的方块百分比。
* **Min Length** (默认值: 2): 指定藤蔓的最小长度。
* **Max Length** (默认值: 5): 定义藤蔓的最大长度。

<img src="../../.gitbook/assets/ezvines_mask.gif" alt="" data-size="original"> **`<mask>`**

<img src="../../.gitbook/assets/ezvines_percentage.gif" alt="" data-size="original"> **`[percentage]`**

<img src="../../.gitbook/assets/ezvines_length.gif" alt="" data-size="original"> **`[min_length] [max_length]`**

</details>

### `//ezmoss`

<details>

<summary>苔藓</summary>

**`//ezmoss <pattern> [amount] [smooth_radii] [smooth_iterations]`**

**`别名: //moss`**

* **Pattern**: 确定要用于苔藓的方块模式。
* **Amount** (默认值: 2.0): 指定要放置的苔藓数量。允许小数值，数值是相对的。
* **Smooth Radii** (默认值: 1): 设置苔藓放置的平滑半径。可以是一个半径或三个用逗号分隔的半径，顺序为东/西、上/下、北/南。
* **Smooth Iterations** (默认值: 5): 定义应用的平滑迭代次数。

<img src="../../.gitbook/assets/ezmoss_amount.gif" alt="" data-size="original"> **`[amount]`**

<img src="../../.gitbook/assets/ezmoss_radius.gif" alt="" data-size="original"> **`[smooth_radii]`**

<img src="../../.gitbook/assets/ezmoss_radii.gif" alt="" data-size="original"> **`[smooth_radii]`**

<img src="../../.gitbook/assets/ezmoss_iterations.gif" alt="" data-size="original"> **`[smooth_iterations]`**

</details>

### `//ezslabmerge`

<details>

<summary>台阶合并</summary>

**`//ezslabmerge <mask> [-b] [-t]`**

**`别名: //slabmerge`**

* **Mask**: 指定蒙板以选择区域内要影响的方块。
* **-b**: 使用时，将底部台阶也转换为完整方块。
* **-t**: 使用时，将顶部台阶也转换为完整方块。

</details>

### `//ezstatecycle`

<details>

<summary>方块状态修改</summary>

**`//ezstatecycle <mask> <state>`**

**`别名: //statecycle`**

* **Mask**: 指定蒙板以选择区域内要影响的方块。
* **State**: 标识选择中每个方块要改变的方块状态值。

</details>
