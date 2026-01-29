# 蒙版 (Masks)

### `#aim`

<details>

<summary>目标蒙版</summary>

**`#aim` 或 `#aim[True|False]`**

以玩家准星指向的方块作为蒙版。

可选参数 True/False 用于切换是否开启"精确碰撞检测"：

* **False** (默认)：将所有方块视为完整的 1x1x1 立方体。例如，你无法直接通过此模式选中按钮背后的方块。
* **True**：尊重方块的实际碰撞体积 (Hitbox)。例如，你可以透过台阶的空隙选中其背后的方块。

<img src="../.gitbook/assets/aimMask.gif" alt="" data-size="original">

</details>

### `#attached`

<details>

<summary>附着蒙版</summary>

**`#attached[<向量,向量,向量 ...>]`**

匹配与至少一个相邻非空气方块相连的方块。

可选参数：提供一个方向向量列表进行定向检测，而非检测所有侧面。\
例如：`#attached[up,down,left,north]`

注意：`attached` 意味着方块在逻辑上与相邻方块"接触"。例如，处于下半部分的台阶无法通过 `#attached[up]` 检测，而带有 `[hanging=true]` 状态的灯笼则可以通过。

</details>

### `#blocklight`

<details>

<summary>方块光照蒙版</summary>

**`#blocklight[光照等级]` 或 `#blocklight[最小等级][最大等级]`**

匹配指定方块光照等级的方块（指由光源方块提供的亮度，不含天空光）。可以设置一个范围来匹配区间内的等级。

</details>

### `#current`

<details>

<summary>当前蒙版</summary>

缩写：**`#c`**

代表你当前已设置的全局蒙版 (gmask)。

例如运行 `//gmask !#current` 将反转你当前的全局蒙版。

</details>

### `#eznoise`

<details>

<summary>噪声蒙版</summary>

**`#eznoisemask[噪声预设][<缩放>][<阈值>][<种子>]`**\
**别名：`#eznm`**

基于噪声预设生成的 `0.0-1.0` 数值，匹配高于指定阈值的方块。

</details>

### `#fullblock`

<details>

<summary>全方块蒙版</summary>

匹配填满了整个 1x1x1 立方体空间的方块。

例如：1-7 层高度的雪层无法通过，但 8 层雪、石头、甚至是玻璃等透明全方块均可通过。

</details>

### `#fuzzypalette`

<details>

<summary>模糊调色板蒙版</summary>

**`#fuzzypalette[调色板]`**

缩写：**`#fpalette`**

匹配调色板中出现的任何方块，忽略其具体的方块状态 (BlockState/数据值)。\
等同于：**`#palette[调色板][False]`**

</details>

### `#infested`

<details>

<summary>寄生蒙版</summary>

匹配被蠹虫寄生的方块（被寄生的石砖、石头等）。

</details>

### `#lightsource`

<details>

<summary>光源蒙版</summary>

**`#lightsource` 或 `#lightsource[光照等级]` 或 `#lightsource[最小等级][最大等级]`**

匹配发光的方块。可以指定特定的光照等级或范围。

</details>

### `#near`

<details>

<summary>临近蒙版</summary>

**`#near[蒙版][距离]`**\
&#xNAN;**`#near[蒙版][最小距离][最大距离]`**\
\
匹配距离指定蒙版方块在一定球形（欧几里得）距离内的方块。\
此蒙版不会修改符合内部 `mask` 条件的原始方块。\
你可以通过设置最小距离来排除中心区域。

![](../.gitbook/assets/mask_near_mask.gif) **`[mask]`**

<img src="../.gitbook/assets/mask_near_max.gif" alt="" data-size="original"> **`[distance]`**

<img src="../.gitbook/assets/mask_near_min_max.gif" alt="" data-size="original"> **`[minDistance][maxDistance]`**

</details>

### `#palette`

<details>

<summary>调色板蒙版</summary>

**`#palette[调色板][<精确匹配>]`**

匹配调色板中包含的方块。

可选参数 `<strict>` (精确匹配)：True 或 False。决定是否必须匹配方块状态 (BlockState)。\
例如，若设为 **False**，则 `oak_stairs[facing=east]` 也能匹配 `oak_stairs[facing=west]`。

</details>

### `#truelight`

<details>

<summary>真实光照蒙版</summary>

**`#truelight[光照等级]` 或 `#truelight[最小等级][最大等级]`**

匹配指定总光照等级的方块（包括天空光和所有光源）。可以指定范围进行匹配。

</details>

### `#vectorgradient`

<details>

<summary>向量渐变蒙版</summary>

**`#vectorgradientmask[向量][距离][<噪声预设>][<噪声缩放>][噪声种子]`**

缩写：`#vgradientm`

沿指定方向和距离的向量进行渐变蒙版。距离起点越近的方块，通过蒙版检测的概率越高。\
支持配合噪声预设使用。

</details>
