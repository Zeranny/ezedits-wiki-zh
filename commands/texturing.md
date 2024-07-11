# 纹理处理 Texturing

所有子命令都在 `//eztexture` (`//ezt`) 下 \
例如 `//eztexture ambient`

## `//eztexture ...`

### `ambient`

<details>

<summary>环境纹理</summary>

**`//ezt ambient <mask> <palette> [radius] [brightness] [contrast]`**

通过近似区域内方块的环境来处理纹理。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **Radius** (默认值: 3): 命令评估环境差异的半径。较大的半径会考虑每次计算的更大区域，导致过渡更平滑。
* **Brightness** (默认值: 0.0): 调整向调色板开始或结束的偏差。较高的值会增强调色板的开始部分，而较低的值会强调结束部分。
* **Contrast** (默认值: 0.0): 放大或减少平滑环境场和局部变化之间的差异，增强或柔化纹理的效果。

</details>

### `axisgradient`

<details>

<summary>轴向渐变纹理</summary>

**`//ezt axisgradient <mask> <palette> [axis] [-r]`**

使用与单个轴对齐的渐变处理区域的纹理。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **Axis** (默认值: "y"): 确定应用渐变的轴（'x'、'y' 或 'z'），指导渐变的方向。
* **-r**: 启用相对渐变模式，在整个列中拉伸调色板。

</details>

### `blend`

<details>

<summary>混合纹理</summary>

**`//ezt blend <palette> [radius] [-v]`**

在区域内混合调色板方块。

* **Palette**: 指定使用的调色板。
* **Radius** (默认值: "0.5"): 确定混合的半径，影响在每个方块周围应用混合效果的范围。
* **-v**: 启用完全混合模式，允许混合非表面方块。

</details>

### `blocklight`

<details>

<summary>方块光纹理</summary>

**`//ezt blocklight <mask> <palette> [-v] [-s]`**

基于游戏内方块光照水平（不包括天光）处理区域的纹理。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **-v**: 启用后，仅考虑方块上方的光照水平。
* **-s**: 启用后，将考虑天光水平。

</details>

### `cells`

<details>

<summary>细胞纹理</summary>

**`//ezt cells <mask> <palette> <amount> [brightness] [contrast] [-s] [-r]`**

使用细胞样图案处理区域的纹理。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **Amount**: 确定纹理中细胞的数量。
* **Brightness** (默认值: 0.0): 调整向调色板开始或结束的偏差。较高的值会增强调色板的开始部分，而较低的值会增强结束部分。
* **Contrast** (默认值: 0.0): 修改细胞之间的对比度，增强图案的定义和分离。
* **-s** (默认值: -1): 生成细胞图案的可选种子。
* **-r** (默认值: 5): 设置 Voronoi 图中的种子点排斥因子，影响细胞的形状和分布。

</details>

### `curvature`

<details>

<summary>曲率纹理</summary>

**`//ezt curvature <mask> <palette> [radius] [brightness] [contrast]`**

通过近似曲率处理区域的纹理。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **Radius** (默认值: 3): 指定计算曲率的半径，影响效果的细微程度或显著程度。
* **Brightness** (默认值: 0.0): 调整向调色板开始或结束的偏差。较高的值会增强调色板的开始部分，而较低的值会强调结束部分。
* **Contrast** (默认值: 0.0): 修改不同曲率区域之间的对比度，增强图案的定义和分离。

</details>

### `flow`

<details>

<summary>流动纹理</summary>

**`//ezt flow <mask> <palette> [exposure] [iterations] [velocity] [paletteScalar] [noise] [-m] [-g] [-f]`**

在选择区域的所有表面上生成流场效果。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **Exposure** (默认值: 0.6): 控制流线的总体密度，影响使用调色板的程度。
* **Iterations per Line** (默认值: 32): 绘制每条线的步骤数，更多的迭代会生成更长的线条。
* **Point Velocity** (默认值: 0.5): 点在表面上移动的速度。
* **Palette Index Scalar** (默认值: 1.0): 缩放用于选择调色板块的值。
* **Noise** (默认值: [类型:Perlin]): 用于生成流场的噪声类型。
* **-m**: 点动量加权，混合之前的移动方向。
* **-g**: 应用重力到点上，将它们拉向指定方向。
* **-f**: 用调色板中最低的方块填补空隙。

</details>

### `noise`

<details>

<summary>噪声纹理</summary>

**`//ezt noise <mask> <palette> <noise> [-z] [-s]`**

使用给定的噪声处理区域的纹理。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **Noise** (默认值: `Perlin(Freq:0.05)`): 设置要使用的噪声。
* **-z** (默认值: 1): 调整噪声的比例。
* **-s** (默认值: -1): 生成噪声图案的可选种子值。

</details>

### `pointlight`

<details>

<summary>点光源纹理</summary>

**`//ezt pointlight <mask> <palette> [falloffRange] [radius] [interval] [-l] [-o] [-r] [-f]`**

根据表面相对于光源的方向处理区域的纹理。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **Falloff Range** (默认值: 0): 设置衰减范围，即光点的亮度。如果设置为 0，则使用玩家与区域中心的距离。
* **Radius** (默认值: 1): 指定法线近似半径，影响光的边缘的柔和度。
* **Interval** (默认值: "0,90"): 定义表面方向区间，0 表示直接面向光源，180 表示背向光源。区间内的表面将被纹理化，超出区间的将使用调色板的第一个或最后一个方块。
* **-f**: 禁用光衰减，在整个区域内应用均匀的光强度，无论距离光源多远。
* **-l**: 将光源位置更改为给定坐标，否则使用玩家的位置。
* **-o** (默认值: 0.0): 确定遮蔽强度。较高的值会导致“更暗”的阴影。预期范围为 0-1。
* **-r** (默认值: 1): 确定遮蔽（阴影）的平滑半径。

</details>

### `shift`

<details>

<summary>移位纹理</summary>

**`//ezt shift <palette> [shift]`**

通过设置的量移位调色板来修改区域的纹理。

* **Palette**: 指定使用的调色板。
* **Shift** (默认值: 1): 确定调色板中方块的移位数量。

</details>

### `sunlight`

<details>

<summary>阳光纹理</summary>

**`//ezt sunlight <mask> <palette> [radius] [interval] [-l] [-o] [-r]`**

使用全局光源方向控制调色板的应用，对区域进行纹理化。

* **Mask**: 要替换的方块。
* **Palette**: 指定使用的调色板。
* **Radius** (默认值: 1): 定义法线近似半径，影响计算表面相对于阳光的方向。
* **Interval** (默认值: "0,180"): 定义表面方向间隔，以度为单位，其中0是直接朝向光，180是背对光。此间隔内的表面将被纹理化，低于或高于此间隔的任何表面将被纹理化为第一个或最后一个调色板方块。
* **-l** (默认值: down): 全局光照方向。
* **-o** (默认值: 0.0): 确定遮蔽的强度。较高的值会产生“更暗”的阴影。预期范围为0-1。
* **-r** (默认值: 1): 确定遮蔽（阴影）的平滑半径。

</details>

### `advanced`

<details>

<summary>高级纹理</summary>

**`//ezt advanced <mask> <palette> <texture>`**

更强大的 eztexture 接口。它可以访问所有其他 eztexture 命令并可以混合/组合它们。
这意味着你可以同时进行环境和阳光纹理处理。

- **Mask**: 要替换的方块(蒙板)。
- **Palette**: 指定使用的调色板。
- **Texture**: 纹理规范。

#### 如何定义 `<texture>`？

一个 `<texture>` 遵循以下常见的复杂对象指定方式：
```<type>(<parameter1>:<value1>,<parameter2>:<value2>)```
每种纹理类型都有自己的一组参数。你可以设置任意多的参数。如果没有设置参数，将使用默认值。每个参数可以接受不同的输入。有些参数接受数字，有些接受3D向量，有些接受噪声参数，甚至有些接受纹理对象本身。
一个 `<texture>` 可以是任何现有的纹理模式。一些简单的例子：
- `Ambient`
- `Ambient()`
- `Ambient(Radius:2)`
- `Ambient(Radius:2,Brightness:0.2,Contrast:0.3)`
- `Flow(Noise:@@ridged(Freq:0.12))`

解释一下：以下两个命令将执行相同的操作。
- `//eztexture ambient #existing ##grayscale 2 0.2 0.3`
- `//eztexture advanced #existing ##grayscale Ambient(Radius:2,Brightness:0.2,Contrast:0.3)`

#### 组合纹理

以下纹理具有 `Texture1`(`T1`)/`Texture2`(`T2`) 参数，接受 `<texture>` 参数本身，允许你组合纹理模式：
- `Add(T1:...,T2:...)`
- `Subtract(T1:...,T2:...)`
- `Multiply(T1:...,T2:...)`
- `Divide(T1:...,T2:...)`
- `WeightedAverage(T1:...,T2:...)`
- `Darken(T1:...,T2:...)`
- `Lighten(T1:...,T2:...)`
- `Difference(T1:...,T2:...)`
- `Screen(T1:...,T2:...)`

以下纹理具有 `Texture`(`T`) 参数，接受 `<texture>` 参数本身，允许你调整/后处理纹理：
- `Adjust(T:...,Brightness:...,Contrast:...)`
- `Invert(T:...)`
- `Blend(T:...,Radius:...)`

示例：
- `WeightedAverage(T1:Sun(),T2:Ambient())`
- `Blend(T:Flow(Noise:@@ridged(Freq:0.12)),Radius:0.7)`
- `Darken(T1:Noise(Noise:@@smoothcells(freq:0.5)),T2:Flow)`
- `Adjust(T:Pointlight,Contrast:0.5)`

请注意，`Texture`/`Texture1`/`Texture2` (`T`/`T1`/`T2`) 不是可选项。你必须设置它们以使用这些组合/调整纹理。（如果不设置，你将收到错误消息，提示 `cannot be null`）。

</details>
