---
description: 表面形状散布器
---

# 散布器

`//ezscatter` (`//ezsc`) 命令将一个形状散布在选择区域内的方块表面。

它提供了许多预定义的形状，并且可以使用 WorldEdit 表达式定义自己的形状。

{% code overflow="wrap" %}
```
//ezscatter [-s <dimensions>] [-o <sizeMultiplier>] [-n <density>] [-c <angleDeg>] [-k <rotationAxis>] [-i <primaryAxis>] [-j <secondaryAxis>] [-d <filterDirections>] [-e <filterThreshold>] [-m <maskFilter>] [-p <palette>] <shape> [-a] [-b] [-r] [-u] [-w]
```
{% endcode %}

<details>

<summary><mark style="color:red;"><strong>&lt;shape&gt;</strong></mark></summary>

**当前形状**

_附加参数在形状后的括号内给出。_

* bean
* cube
* curl
* cylinder
* ellipsoid
* fur
* leaf
* lemon
* onion
* polygon(*Sides*)
* pyramid(*Sides*)
* spike
* supersphere(*Exponent*)
* tetrahedron
* torus(*Thickness*)

除了这些，你还可以使用 WorldEdit 表达式定义自己的形状

**`Expression;<expression>`**
或
**`Expr;<expression>`**

例如，这个表达式将创建螺旋：\
`//ezsc expr;x+=sin(2*pi*y)/2;z+=cos(2*pi*y)/2;x*x+z*z<0.3^2`

</details>

* **Shape**: 指定要散布的形状类型。
* **-s** (默认值: "20"): 定义要散布的形状的大小。可以为均匀形状指定一个大小，也可以为 (X,Y,Z) 指定三个大小。
* **-o** (默认值: "0.8"): 控制形状组之间的大小差异。设置为 1 表示恒定大小。
* **-n** (默认值: "2.0%"): 控制形状在区域内的散布密度，以百分比表示。
* **-c** (默认值: "0"): 指定形状的旋转角度。
* **-k** (默认值: "up"): 确定形状旋转的轴。
  如果为 **CONSTANT**：
  * **-i** (默认值: "y"): 定义形状方向的主要轴。
  * **-j** (默认值: "x"): 定义形状方向的次要轴。
* **-d**: 限制放置在特定方向。
  * **-e** (默认值: "0.5"): 加强或减弱方向过滤效果。
* **-m**: 限制形状放置在与指定蒙板匹配的表面方块上。
* **-p**: 选择用于散布形状的方块调色板。如果未设置，则使用现有方块。
* **-a**: 启用时不放置空气方块。
* **-b**: 跳过部分落在区域外的形状放置。
* **-r**: 使形状与表面法线对齐。
* **-u**: 禁用均匀分布，允许更随机的形状放置。
* **-w**: 移除原始形状，仅保留散布的形状。
