# 变形 Deformation

所有子命令都在`//ezdeform` (`//ezd`) 下 \
例如 `//ezdeform hexagonalize`

## `//ezdeform ...`

### `hexagonalize`

<details>

<summary>六边形化</summary>

**`//ezdeform hexagonalize [大小] [空气间隙] [x轴旋转角度] [z轴旋转角度] [偏移角度]`**

* **大小** (默认值: 12): 设置六边形的大小。
* **空气间隙** (默认值: 0.0): 定义柱子之间的空气间隙宽度。
* **x轴旋转角度** (默认值: 0.0): 设置柱子沿X轴的旋转角度，单位为度。
* **z轴旋转角度** (默认值: 0.0): 设置柱子沿Z轴的旋转角度，单位为度。
* **偏移角度** (默认值: 60.0): 调整偏移角度，控制形状（范围：0-90度）。

![](https://cloud.alsace.team/Picture/pic/20240709220045.png?imageMogr2/format)

</details>

### `noise`

<details>

<summary>噪声</summary>

**`//ezdeform noise <噪声> [强度] [-z <范围>] [-s <种子>]`**

* **噪声**: 指定用于变形的噪声类型。
* **强度** (默认值: 2.0): 设置噪声效果的强度。
* **范围** (默认值: 1): 确定噪声的比例。
* **-s** (默认值: -1): 噪声模式的可选种子。
* **-h**: 使用时，仅水平变形区域。
* **-v**: 使用时，仅垂直变形区域。

</details>

### `rotate`

<details>

<summary>旋转</summary>

**`//ezdeform rotate <角度> [-o]`**

以选区为中心，旋转选区

* **Angle**: 设置旋转角度，单位为度。
* **-o**: 使用时，以玩家的位置作为旋转中心，而不是选择区域的中心。

</details>

### `voronoialize`

<details>

<summary>Voronoialize</summary>

**`//ezdeform voronoialize [大小] [a空气间隙] [-s <种子>]`**

* **大小** (默认值: 12): 确定voronoialize单元的大小。
* **空气间隙** (默认值: 0.0): 指定单元之间的空气间隙宽度。
* **-s** (默认值: -1): 生成模式的可选种子。

![](https://cloud.alsace.team/Picture/pic/20240709221059.png?imageMogr2/format)

</details>

### `voronoialize2`

<details>

<summary>Voronoialize2</summary>

**`//ezdeform voronoialize2 <数量> [空气间隙] [-s <种子>] [-r <种子排斥>] [-n <偏移>]`**

* **Amount**: 指定voronoialize中的单元数量。
* **Air Gap** (默认值: 0.0): 确定单元之间的空气间隙宽度。
* **-s** (默认值: -1): 生成模式的可选种子。
* **-r** (默认值: 15): 设置voronoialize种子点排斥因子。
* **-n** (默认值: 5): 调整法线偏移因子，可以减少以获得更薄的形状。

</details>

### `voxelize`

<details>

<summary>体素化</summary>

**`//ezdeform voxelize <比例> <空气间隙> <强度> [-i <主要轴>] [-j <次要轴>] [-s <种子>] [-hv]`**

* **比例** (默认值: 3,3,3): 设置每个维度的比例。
* **空气间隙** (默认值: 0.0): 定义体素之间的空气间隙宽度。
* **强度** (默认值: 0.0): 调整随机网格变形的强度（范围：0-1）。
* **-i** (默认值: y): 指定网格旋转的主要轴。
* **-j** (默认值: -x): 指定网格旋转的次要轴。
* **-s** (默认值: -1): 随机变形的可选种子。
* **-h**: 只进行体素化。
* **-v**: 只进行垂直体化。

![](https://cloud.alsace.team/Picture/pic/20240709221524.png?imageMogr2/format)

</details>
