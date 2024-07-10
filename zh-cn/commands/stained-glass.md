# 彩色玻璃

与使用彩色玻璃相关的命令。

### `//ezstainedglassgradient`

<details>

<summary>玻璃渐变</summary>

**`//ezstainedglassgradient <startColor> [endColor] <layers> [length] [quality] [direction] [-c <backgroundColor>] [-bs]`**

**`别名: //stainedglassgradient, //glassgradient`**

* **StartColor**: 指定渐变的起始颜色（Hex 代码）。
* **EndColor** (默认值: 无): 指定渐变的结束颜色（Hex 代码）。如果未提供结束颜色，则整个渐变将使用起始颜色。
* **Layers**: 用于创建渐变的玻璃层数。
* **Length** (默认值: 1): 渐变的长度，以方块数为单位。
* **Quality** (默认值: 7): 渐变的准确性。较高的值可能需要更长的时间来运行。
* **-c** (默认值: #000000): 指定渐变背景色（Hex 代码），如果未使用 **-b** 标志。
* **-b**: 找到玻璃后面最近的实心方块以增加颜色准确性。这会消耗更多资源。
* **-s**: 跳过重复的层组合。

</details>
