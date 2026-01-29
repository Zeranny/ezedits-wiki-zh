<!-- langmirror:chunk 0 -->
---
hidden: true
---

# 圆柱化 (Cylindrify) & 球面化 (Spherify)

***

#### ![](../../.gitbook/assets/ezdeform_cylindrify.png)

### //ezdeform <mark style="color:orange;">cylindrify</mark>

<details>

<summary><mark style="color:blue;">圆柱化 (Cylindrify)</mark></summary>

**`//ezdeform cylindrify [`**<mark style="color:orange;">**`-afost`**</mark>**`] [`**<mark style="color:orange;">**`-r <radii>`**</mark>**`] [`**<mark style="color:orange;">**`-d <depth>`**</mark>**`] [`**<mark style="color:orange;">**`-x <axisMap>`**</mark>**`] [`**<mark style="color:orange;">**`-i <primary>`**</mark>**`] [`**<mark style="color:orange;">**`-j <secondary>`**</mark>**`] [`**<mark style="color:orange;">**`-w <profile>`**</mark>**`]`**

将选区投影并生成一个圆柱体。

<!-- langmirror:chunk 1 -->
* <mark style="color:orange;">**-r \<radii>**</mark>: 设置生成圆柱体的半径和半长。如果不设置，将根据你选区的尺寸进行计算。&#x20;
* <mark style="color:orange;">**-d \<depth>**</mark>: 确定投影图案向生成圆柱体中心延伸的深度。如果不设置，将根据你选区的尺寸进行计算。&#x20;
* <mark style="color:orange;">**-x \<axisMap>**</mark>: 确定哪个输入轴映射到哪个输出轴。X/Y/Z 是输入区域的轴。EW/UD/NS 是生成圆柱体的轴。
  * 示例：
* <mark style="color:orange;">**-i \<primary>**</mark> (默认为 `y`): 确定生成的圆柱体在空间中的朝向。
* <mark style="color:orange;">**-j \<secondary>**</mark> (默认为 `x`): 确定生成的圆柱体在空间中的朝向。
* <mark style="color:orange;">**-a**</mark>: 不在生成的形状周围放置空气长方体。（如果输入区域包含空气，空气仍会被放置）
* <mark style="color:orange;">**-f**</mark>: 填充形状。将最内层向中心挤压填充。
* <mark style="color:orange;">**-o**</mark>: 将形状放置在玩家周围，而不是选区的上方/旁边。
* <mark style="color:orange;">**-s**</mark>: 在东西方向上忽略输入源的半个方块（在拼接图案时很有用。）
* <mark style="color:orange;">**-t**</mark>: 生成具有两格宽中心的圆柱体（需要设置 -r。）

- <mark style="color:orange;">**-w \<profile>**</mark>: 参见 [Smoothblocks](../../smoothblocks/smoothblocks.md)。

</details>

***

#### ![](../../.gitbook/assets/ezdeform_spherify.png)

### //ezdeform <mark style="color:orange;">spherify</mark>

<details>

<summary><mark style="color:blue;">Spherify (球体化)</mark></summary>

<!-- langmirror:chunk 2 -->
**`//ezdeform spherify [`**<mark style="color:orange;">**`-aflost`**</mark>**`] [`**<mark style="color:orange;">**`-r <radii>`**</mark>**`] [`**<mark style="color:orange;">**`-d <depth>`**</mark>**`] [`**<mark style="color:orange;">**`-x <axisMap>`**</mark>**`] [`**<mark style="color:orange;">**`-i <primary>`**</mark>**`] [`**<mark style="color:orange;">**`-j <secondary>`**</mark>**`] [`**<mark style="color:orange;">**`-w <profile>`**</mark>**`]`**

将选区投影到球面或椭球面上，并生成相应形状。支持使用墨卡托投影（默认）或（单贴片）LAEA 投影（<mark style="color:orange;">`-l`</mark>）。

<!-- langmirror:chunk 3 -->
* <mark style="color:orange;">**-r \<radii>**</mark>: 设置生成的球体/椭球体的半径。
* <mark style="color:orange;">**-d \<depth>**</mark>: 确定投影图案向生成球体中心延伸的深度。
* <mark style="color:orange;">**-x \<axisMap>**</mark>: 确定哪个输入轴映射到哪个输出轴。X/Y/Z 是输入区域的轴。EW/UD/NS 是生成球体的轴。
* <mark style="color:orange;">**-i \<primary>**</mark> (默认为 `y`): 确定生成的球体在空间中的方向。
* <mark style="color:orange;">**-j \<secondary>**</mark> (默认为 `x`): 确定生成的球体在空间中的方向。
* <mark style="color:orange;">**-a**</mark>: 不在生成的球体周围放置空气长方体。（如果输入区域包含空气，空气仍会被放置）
* <mark style="color:orange;">**-f**</mark>: 填充形状。将最内层向中心挤压。
* <mark style="color:orange;">**-l**</mark>: 使用 LAEA 投影代替墨卡托投影 (Mercator)。
* <mark style="color:orange;">**-o**</mark>: 在玩家周围生成球体，而不是在选区上方/旁边。
* <mark style="color:orange;">**-s**</mark>: 忽略输入区域东西方向上的半个方块（在拼接图案时非常有用）。
* <mark style="color:orange;">**-t**</mark>: 生成一个以两格为中心的球体（需要设置 -r）。

- <mark style="color:orange;">**-w \<profile>**</mark>: 参见 [Smoothblocks](../../smoothblocks/smoothblocks.md)。

</details>

***