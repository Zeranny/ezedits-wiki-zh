<!-- langmirror:chunk 0 -->
# 表面

所有子命令都在 `//ezsurface` (`//ezsu`) 下\
例如 `//ezsurface rockify`

## `//ezsurface ...`

### `fuzzify`

<details>

<summary>模糊化表面</summary>

**`//ezsu fuzzify <radius> [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t] [-w <profile>]`**

使用白噪声使表面显得更加模糊。

* **Radius**: 一个浮点值，决定了距离表面的最大距离，在此距离内可以进行修改。
* **Smooth Radius**（默认值：0）：指定平滑操作的半径。
* **Smooth Iterations**（默认值：0）：确定平滑操作应用的次数。
* **-c**: 限制修改仅挖掘地形。
* **-e**: 限制操作仅从地形向外扩展。
* **-m**: 应用蒙版以仅修改与指定条件匹配的表面。\
  由于需要匹配表面而增加的复杂性，此选项可能会显著减慢处理速度。
* **-t**: 尝试保留区域的拓扑结构。
* **-w**: 参见 [Smoothblocks](../smoothblocks/smoothblocks.md)。

</details>

### `rockify`

<details>

<summary>岩石化表面</summary>

**`//ezsu rockify <radius> [size] [oct] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t] [-w <profile>]`**

使用 Perlin 噪声使表面呈现岩石状。

* **Radius**: 一个浮点值，决定了距离表面的最大距离，在此距离内可以进行修改。
* **Noise Size**（默认值：10）：控制所使用噪声的规模。
* **Noise Octaves**（默认值：1）：设置应用的噪声层数。
* **Smooth Radius**（默认值：1）：指定平滑操作的半径。
* **Smooth Iterations**（默认值：4）：确定平滑操作应用的次数。
* **-c**: 限制修改仅挖掘地形。
* **-e**: 限制操作仅从地形向外扩展。
* **-m**: 应用蒙版以仅修改与指定条件匹配的表面。\
  由于需要匹配表面而增加的复杂性，此选项可能会显著减慢处理速度。
* **-t**: 尝试保留区域的拓扑结构。
* **-w**: 参见 [Smoothblocks](../smoothblocks/smoothblocks.md)。

</details>

### `voronoify`

<details>

<summary>Voronoi 化表面</summary>

**`//ezsu voronoify <radius> [cell_size] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t] [-w <profile>]`**

使用 Voronoi 噪声变形表面。

<!-- langmirror:chunk 1 -->
* **Radius**: 一个浮点值，决定距离表面的最大距离，在该距离内可以进行修改。
* **Cell Size**（默认值：12）：决定 Voronoi 图案中每个单元的平均大小，影响纹理的缩放。
* **Smooth Radius**（默认值：0）：指定平滑操作的半径。
* **Smooth Iterations**（默认值：0）：决定平滑操作应用的次数。
* **-c**：将修改限制为仅雕刻地形。
* **-e**：将操作限制为仅从地形向外扩展。
* **-m**：应用蒙版以仅修改与指定条件匹配的表面。\
  由于添加了表面匹配的复杂性，此选项可能会显著减慢处理速度。
* **-t**：尝试保留区域的拓扑结构。
* **-w**：参见 [Smoothblocks](../smoothblocks/smoothblocks.md)。

</details>

### `noisify`

<details>

<summary>Noiseify Surface</summary>

**`//ezsu noisify <radius> <noise> [scale] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t] [-w <profile>]`**

使用噪声预设来变形表面。

* **Radius**: 一个浮点值，决定距离表面的最大距离，在该距离内可以进行修改。
* **Noise**: 指定用于修改的噪声。
* **Scale**（默认值：1）：调整噪声的缩放。
* **Smooth Radius**（默认值：1）：指定平滑操作的半径。
* **Smooth Iterations**（默认值：4）：决定平滑操作应用的次数。
* **-c**：将修改限制为仅雕刻地形。
* **-e**：将操作限制为仅从地形向外扩展。
* **-m**：应用蒙版以仅修改与指定条件匹配的表面。\
  由于添加了表面匹配的复杂性，此选项可能会显著减慢处理速度。
* **-t**：尝试保留区域的拓扑结构。
* **-w**：参见 [Smoothblocks](../smoothblocks/smoothblocks.md)。

</details>