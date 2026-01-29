<!-- langmirror:chunk 0 -->
# 铺色 (Texturing)

{% embed url="https://www.youtube.com/watch?v=S-fZlxLPUZo" %}
视频教程由 [MegRae](https://megrae.art/) 制作
{% endembed %}

***

所有子指令均在 `//eztexture` (`//ezt`) 下\
例如 `//eztexture ambient`

## `//eztexture ...`

### `ambient`

<details>

<summary>环境遮蔽铺色 (Ambient)</summary>

**`//ezt ambient <蒙版> <调色板> [半径] [亮度] [对比度] [-w]`**

根据区域内方块的"环境遮蔽"（Ambient Occlusion）效果进行铺色。

* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **半径 (Radius)**（默认值：3）: 计算环境差异的半径。半径越大，过渡越平滑。
* **亮度 (Brightness)**（默认值：0.0）: 调整调色板索引的偏向。正值偏向调色板前端，负值偏向调色板后端。
* **对比度 (Contrast)**（默认值：0.0）: 放大或缩小环境场与局部变化之间的差异，增强或减弱纹理细节。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `axisgradient`

<details>

<summary>轴向渐变铺色 (Axis Gradient)</summary>

**`//ezt axisgradient <蒙版> <调色板> [轴向] [-r] [-w]`**

沿单一轴线方向应用渐变铺色。

* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **轴向 (Axis)**（默认值："y"）: 决定渐变的方向（'x'、'y' 或 'z'）。
* **-r**: 开启相对渐变模式，将调色板拉伸应用到整个高度/长度。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `blend`

<details>

<summary>混合铺色 (Blend)</summary>

**`//ezt blend <调色板> [半径] [-v] [-w]`**

在选区内混合调色板中的方块。

* **调色板 (Palette)**: 指定用于混合的调色板。
* **半径 (Radius)**（默认值："0.5"）: 决定混合的半径，影响每个方块周围的混合范围。
* **-v**: 开启完整混合模式，允许混合非表面方块。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `blocklight`

<details>

<summary>方块光照铺色 (Block Light)</summary>

**`//ezt blocklight <蒙版> <调色板> [-v] [-s] [-l] [-w]`**

基于游戏内的方块亮度等级（不含天空光）进行铺色。

<!-- langmirror:chunk 1 -->
* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **-v**: 开启后，仅考虑方块正上方的光照等级。
* **-s**: 开启后，同时考虑天空光等级。
* **-l**: 开启后，防止调色板替换光源方块。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `cells`

<details>

<summary>细胞图案铺色 (Cells)</summary>

**`//ezt cells <蒙版> <调色板> <数量> [亮度] [对比度] [-s] [-r] [-w]`**

使用类似细胞（Voronoi）的图案进行铺色。

* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **数量 (Amount)**: 决定选区内生成的细胞数量。
* **亮度 (Brightness)**（默认值：0.0）: 调整调色板索引偏向。
* **对比度 (Contrast)**（默认值：0.0）: 修改细胞间的对比度，增强图案的分界感。
* **-s**（默认值：-1）: 生成图案的随机种子。
* **-r**（默认值：5）: 设置排斥因子，影响细胞的形状和分布。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `curvature`

<details>

<summary>曲率铺色 (Curvature)</summary>

**`//ezt curvature <蒙版> <调色板> [半径] [亮度] [对比度] [-w]`**

基于表面的曲率（凸起或凹陷）进行铺色。

* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **半径 (Radius)**（默认值：3）: 计算曲率的半径，影响效果的细腻程度。
* **亮度 (Brightness)**（默认值：0.0）: 调整调色板索引偏心。
* **对比度 (Contrast)**（默认值：0.0）: 增强不同曲率区域之间的差异。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `flow`

<details>

<summary>流向铺色 (Flow)</summary>

**`//ezt flow <蒙版> <调色板> [覆盖率] [迭代次数] [速度] [调色板缩放] [噪声] [-m] [-g] [-f] [-w]`**

在选区表面生成流线效果（类似水流或纹路）。

<!-- langmirror:chunk 2 -->
* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **覆盖率 (Exposure)**（默认值：0.6）：控制流线的密度，影响调色板的使用量。
* **迭代次数 (Iterations)**（默认值：32）：每条流线的长度（步数）。
* **速度 (Velocity)**（默认值：0.5）：点在表面移动的速度。
* **调色板缩放 (Palette Index Scalar)**（默认值：1.0）：缩放用于选择调色板方块的索引值。
* **噪声 (Noise)**（默认值：[Type:Perlin]）：生成流场的基础噪声。
* **-m**: 动量加权，使线条过渡更自然。
* **-g**: 应用重力，将线条拉向特定方向。
* **-f**: 使用调色板中索引最低的方块填充间隙。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `noise`

<details>

<summary>噪声铺色 (Noise)</summary>

**`//ezt noise <蒙版> <调色板> <噪声> [-z] [-s] [-w]`**

使用指定的噪声模式进行铺色。

* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **噪声 (Noise)**（默认值：`Perlin(Freq:0.05)`）：设置使用的噪声类型及参数。
* **-z**（默认值：1）：调整噪声的缩放比例（频率）。
* **-s**（默认值：-1）：随机种子。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `pointlight`

<details>

<summary>点光源铺色 (Point Light)</summary>

**`//ezt pointlight <蒙版> <调色板> [衰减范围] [半径] [区间] [-l] [-o] [-r] [-f] [-w]`**

根据表面相对于点光源的方向进行铺色（模拟局部光照）。

<!-- langmirror:chunk 3 -->
* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **衰减范围 (Falloff Range)**（默认值：0）：设置光源的影响范围（亮度）。若为 0，则使用玩家到区域中心的距离。
* **半径 (Radius)**（默认值：1）：法线计算半径，影响光影边缘的柔和度。
* **区间 (Interval)**（默认值："0,90"）：定义受光角度范围（度）。0 为直射，180 为背射。
* **-f**: 禁用光衰减，在整个区域应用均匀的光照强度。
* **-l**: 手动指定光源坐标（默认使用玩家当前位置）。
* **-o**（默认值：0.0）：阴影遮挡强度（0-1）。值越高，阴影越暗。
* **-r**（默认值：1）：阴影平滑半径。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `shift`

<details>

<summary>调色板位移 (Shift)</summary>

**`//ezt shift <调色板> [位移量]`**

通过在调色板内移动索引来修改现有铺色效果。

* **调色板 (Palette)**: 指定使用的调色板。
* **位移量 (Shift)**（默认值：1）：索引移动的步数。

</details>

### `sunlight`

<details>

<summary>日光铺色 (Sun Light)</summary>

**`//ezt sunlight <蒙版> <调色板> [半径] [区间] [-l] [-o] [-r] [-w]`**

模拟全局平行光源（如阳光）的方向进行铺色。

* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **半径 (Radius)**（默认值：1）：法线计算半径。
* **区间 (Interval)**（默认值："0,180"）：受光角度范围。
* **-l**（默认值：down）：光线的照射方向向量。
* **-o**（默认值：0.0）：阴影遮挡强度（0-1）。
* **-r**（默认值：1）：阴影平滑半径。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

</details>

### `advanced`

<details>

<summary>高级铺色 (Advanced)</summary>

**`//ezt advanced <蒙版> <调色板> <纹理规范> [-w]`**

<!-- langmirror:chunk 4 -->
功能强大的铺色界面，可以调用并组合所有的 `eztexture` 模式。例如同时叠加环境遮蔽和阳光效果。

* **蒙版 (Mask)**: 指定需要替换的方块。
* **调色板 (Palette)**: 指定使用的调色板。
* **纹理规范 (Texture)**: 详细的铺色逻辑定义。
* **-w**: 尝试使用最接近的材质为非全方块（楼梯、台阶等）铺色。

**如何定义 `<texture>`？**

`<texture>` 采用类似定义对象的语法：`<类型>(<参数1>:<值1>,<参数2>:<值2>)`。每种模式都有其特定的参数，未设置的参数将使用默认值。

示例：

* `Ambient`
* `Ambient(Radius:2)`
* `Ambient(Radius:2,Brightness:0.2,Contrast:0.3)`
* `Flow(Noise:@@ridged(Freq:0.12))`

这两个指令的效果是等价的：

* `//eztexture ambient #existing ##grayscale 2 0.2 0.3`
* `//eztexture advanced #existing ##grayscale Ambient(Radius:2,Brightness:0.2,Contrast:0.3)`

**组合铺色模式**

以下模式支持嵌套 `Texture1`(`T1`) 和 `Texture2`(`T2`) 参数：

* `Add` (相加), `Subtract` (相减), `Multiply` (相乘), `Divide` (相除), `WeightedAverage` (加权平均), `Darken` (变暗), `Lighten` (变亮), `Difference` (差值), `Screen` (滤色)

以下模式支持 `Texture`(`T`) 参数进行后处理：

* `Adjust` (调整亮度/对比度), `Invert` (反相), `Blend` (混合/平滑)

综合示例：

* `WeightedAverage(T1:Sun(),T2:Ambient())`
* `Blend(T:Flow(Noise:@@ridged(Freq:0.12)),Radius:0.7)`
* `Darken(T1:Noise(Noise:@@smoothcells(freq:0.5)),T2:Flow)`

<!-- langmirror:chunk 5 -->
注意：`T`/`T1`/`T2` 等参数是必填项，否则会报错 `cannot be null`。

</details>

***
