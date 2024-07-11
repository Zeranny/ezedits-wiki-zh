# 图案

### `#aim`

<details>

<summary>#aim 图案</summary>

将玩家瞄准的方块作为图案。

<img src="../.gitbook/assets/aimPattern.gif" alt="" data-size="original">

</details>

### `#eznoise`

<details>

<summary>#eznoise 图案</summary>

**`#eznoisepattern[palette][noisePreset][<scale>][<seed>]`**\
**别名: `#eznp`**

使用噪声预设值返回调色板方块。\
**还包括以下内置预设:**

* **`#ridged[palette][<scale>][<seed>]`**
* **`#smoothcells[palette][<scale>][<seed>]`**&#x20;
* **`#voronoiedge[palette][<scale>][<seed>]`**

</details>

### `#vectorgradient`

<details>

<summary>#vectorgradient 图案</summary>

**`#vectorgradientpattern[palette][vector][distance][<noisePreset>][<noiseScale>][<noiseSeed>]`**\
**别名: `#vgradientp`**

沿给定距离长度的向量设置调色板方块，方块的选择基于距离和混合因子。也可以使用噪声预设。

</details>

### `#selection`

<details>

<summary>#selection 图案</summary>

**`#selection[selection][<offset>]`**

简写: **`#sel[selection][<offset>]`**

使用保存选择位置当前世界中的方块设置方块。\
效果如同选择区域被平铺/堆叠。

可选的 `<offset>` 变量可用于按给定向量偏移图案。

</details>

### `#palette`

<details>

<summary>#palette 图案</summary>

**`#palette[palette]`**

接受给定的调色板并返回调色板方块列表。\
可以用作随机方块图案。

例如 `//set #palette[##ice]` 与 `//set [blue_ice,packed_ice,ice]` 相同。

</details>
