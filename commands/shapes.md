# 几何工具 Shapes

所有子命令都在 `//ezshapes` (`//ezsh`) 下 \
例如 `//ezshapes polydome`

## `//ezshapes ...`

### `cone`

<details>

<summary>圆锥体</summary>

**`//ezsh cone <pattern> <radii> <height> [rotation] [-dos]`**

* **Pattern**: 指定方块模式。
* **Radii**: 定义圆锥体的半径。第一个值用于南北方向，第二个用于东西方向。如果旋转圆锥体，这些方向可能会改变。
* **Height**: 设置圆锥体的高度。
* **Rotation** (默认值: 0): 确定围绕y轴的旋转角度，以度为单位。如果使用 `-o` 参数，可以与玩家的瞄准方向对齐。
* **-d**: 激活时，生成尖端朝下的圆锥体。
* **-o**: 使用时，考虑玩家的瞄准方向以进行圆锥体的旋转。
* **-s**: 使用时，玩家的选择将大致覆盖形状。

</details>

### `polydome`

<details>

<summary>穹顶</summary>

**`//ezsh polydome <pattern> <sides> <radius> <height> [-vs]`**

* **Pattern**: 指定方块模式。
* **Sides**: 定义穹顶的边数。
* **Radius**: 设置穹顶的半径。
* **Height** (默认值: 1): 确定圆顶的高度。
* **-v**: 指定顶点模式，改变穹顶顶点的外观。
* **-s**: 使用时，玩家的选择将大致覆盖形状。

</details>

### `polygon`

<details>

<summary>多边形</summary>

**`//ezsh polygon <pattern> <sides> <radius> <height> [direction] [-s]`**

* **Pattern**: 指定方块模式。
* **Sides**: 定义多边形的边数。
* **Radius**: 设置多边形的半径。
* **Height** (默认值: 1): 确定多边形的高度。
* **Direction** (默认值: 玩家瞄准方向): 指定放置的方向，可以包括对角线。
* **-s**: 使用时，玩家的选择将大致覆盖形状。

</details>

### `square`

<details>

<summary>正方形</summary>

**`//ezsh square <pattern> <radius> <height> [-fws]`**

* **Pattern**: 指定方块模式。
* **Radius**: 设置正方形的半径。
* **Height** (默认值: 1): 确定正方形的高度。
* **-f**: 激活时，仅生成正方形的面。
* **-w**: 使用时，仅生成正方形的墙壁。
* **-s**: 使用时，玩家的选择将大致覆盖形状。

</details>

### `tetrahedron`

<details>

<summary>四面体</summary>

**`//ezsh tetrahedron <pattern> <radius> [rotation] [-os]`**

* **Pattern**: 指定方块模式。
* **Radius**: 设置四面体的大小。
* **Rotation** (默认值: 0): 确定围绕y轴的旋转角度，以度为单位。如果使用 `-o` 开关，可以与玩家的瞄准方向对齐。
* **-o**: 使用时，考虑玩家的瞄准方向以进行四面体的旋转。
* **-s**: 使用时，玩家的选择将大致覆盖形状。

</details>

### `torus`

<details>

<summary>环形体</summary>

**`//ezsh torus <pattern> <major_radius> <minor_radius> <cross_section> [-os]`**

* **Pattern**: 指定方块模式。
* **Major Radius**: 设置环形体的主半径。
* **Minor Radius**: 设置环形体的次半径。
* **Cross Section**: 确定环形体的横截面形状：
  * `CIRCLE`
  * `DIAMOND`
  * `ROUNDED_SQUARE`
  * `SQUARE`
* **-o**: 使用时，环形体的旋转与玩家的瞄准方向对齐。
* **-s**: 使用时，玩家的选择将大致覆盖形状。

</details>
