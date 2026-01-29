<!-- langmirror:chunk 0 -->
# 彩色玻璃

与使用彩色玻璃进行着色相关的命令。

### `//ezstainedglassgradient`

<details>

<summary>玻璃渐变</summary>

**`//ezstainedglassgradient <startColor> [endColor] <layers> [length] [quality] [direction] [-c <backgroundColor>] [-bs]`**

**`别名: //stainedglassgradient, //glassgradient`**

* **StartColor**: 指定渐变的起始颜色（十六进制代码）。
* **EndColor**（默认值：无）: 指定渐变的结束颜色（十六进制代码）。如果未提供任何值，则整个渐变将使用起始颜色。
* **Layers**: 创建渐变时要使用的玻璃层数。
* **Length**（默认值：1）: 渐变应该有多少个方块长。
* **Quality**（默认值：7）: 渐变的精确度应该有多高。更高的值可能需要更长的运行时间。
* **-c**（默认值：#000000）: 指定渐变所在的背景颜色（十六进制代码），如果未使用 **-b** 标志。
* **-b**: 查找最接近的实心方块放在玻璃后面以提高颜色精度。这的资源消耗更大。
* **-s**: 跳过重复的层组合。

</details>