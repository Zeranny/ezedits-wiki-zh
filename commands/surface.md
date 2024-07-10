# Surface

所有子命令都在 `//ezsurface` (`//ezsu`) 下 \
例如 `//ezsurface rockify`

## `//ezsurface ...`

### `fuzzify`

<details>

<summary>模糊化表面</summary>

**`//ezsu fuzzify <radius> [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t]`**

使用白噪声使表面显得更加模糊。

* **Radius**: 一个浮点值，确定从表面可以进行修改的最大距离。
* **Smooth Radius** (默认值: 0): 指定平滑操作的半径。
* **Smooth Iterations** (默认值: 0): 确定平滑操作的应用次数。
* **-c**: 限制修改仅雕刻地形。
* **-e**: 限制操作仅从地形向外扩展。
* **-m**: 应用一个蒙板，仅修改匹配指定标准的表面。\
  由于匹配表面的复杂性，此选项可能会显著减慢过程。
* **-t**: 尝试保持区域的拓扑结构。

</details>

### `rockify`

<details>

<summary>岩石化表面</summary>

**`//ezsu rockify <radius> [size] [oct] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t]`**

使用柏林噪声使表面变得岩石化。

* **Radius**: 一个浮点值，确定从表面可以进行修改的最大距离。
* **Noise Size** (默认值: 10): 控制噪声的规模。
* **Noise Octaves** (默认值: 1): 设置应用的噪声层数。
* **Smooth Radius** (默认值: 1): 指定平滑操作的半径。
* **Smooth Iterations** (默认值: 4): 确定平滑操作的应用次数。
* **-c**: 限制修改仅雕刻地形。
* **-e**: 限制操作仅从地形向外扩展。
* **-m**: 应用一个蒙板，仅修改匹配指定标准的表面。\
  由于匹配表面的复杂性，此选项可能会显著减慢过程。
* **-t**: 尝试保持区域的拓扑结构。

</details>

### `voronoify`

<details>

<summary>Voronoi 化表面</summary>

**`//ezsu voronoify <radius> [cell_size] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t]`**

使用 Voronoi 噪声变形表面。

* **Radius**: 一个浮点值，确定从表面可以进行修改的最大距离。
* **Cell Size** (默认值: 12): 决定 Voronoi 图案中每个单元的平均大小，影响纹理的尺度。
* **Smooth Radius** (默认值: 0): 指定平滑操作的半径。
* **Smooth Iterations** (默认值: 0): 确定平滑操作的应用次数。
* **-c**: 限制修改仅雕刻地形。
* **-e**: 限制操作仅从地形向外扩展。
* **-m**: 应用一个蒙板，仅修改匹配指定标准的表面。\
  由于匹配表面的复杂性，此选项可能会显著减慢过程。
* **-t**: 尝试保持区域的拓扑结构。

</details>

### `noisify`

<details>

<summary>噪声化表面</summary>

**`//ezsu noisify <radius> <noise> [scale] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t]`**

使用噪声预设变形表面。

* **Radius**: 一个浮点值，确定从表面可以进行修改的最大距离。
* **Noise**: 指定用于修改的噪声。
* **Scale** (默认值: 1): 调整噪声的比例。
* **Smooth Radius** (默认值: 1): 指定平滑操作的半径。
* **Smooth Iterations** (默认值: 4): 确定平滑操作的应用次数。
* **-c**: 限制修改仅雕刻地形。
* **-e**: 限制操作仅从地形向外扩展。
* **-m**: 应用一个蒙板，仅修改匹配指定标准的表面。\
  由于匹配表面的复杂性，此选项可能会显著减慢过程。
* **-t**: 尝试保持区域的拓扑结构。

</details>
