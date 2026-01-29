<!-- langmirror:chunk 0 -->
# 调色板详解 (Palettes Explained)

ezEdits 中的调色板（Palettes）代表一组方块列表，可用于多个需要保持方块顺序的命令中。

可以使用 **`#`** 前缀来保存和访问用户自定义调色板，使用 **`##`** 前缀来访问 [内置预设调色板](default-palettes.md)。

作为参考，示例如下：

<figure><img src="../.gitbook/assets/palette_Grayscale.png" alt=""><figcaption><p>##Grayscale</p></figcaption></figure>

使用调色板的众多功能包括：

* `//eztexture ...` - [纹理化命令](../commands/texturing.md)
* `#palette` - [调色板蒙版](../masks-and-patterns/masks.md#palette-mask)
* `//ezbrush gradient ...` - [笔刷](../brushes-and-tools/brushes/)

调色板可以由简单的方块列表构成，也可以通过几种修饰符来构建：

<!-- langmirror:chunk 1 -->
* **`,`** - <mark style="color:orange;">**合并**</mark>:
  * 将一个方块或调色板添加到前一个方块或调色板的末尾。\
    例如 `stone,dirt` 是一个包含石头和泥土的 2 方块调色板。`stone,##Grayscale` 是一个由石头和 ##Grayscale 预设调色板中的方块组成的调色板。
* **`-`** - <mark style="color:orange;">**反转**</mark>:
  * 反转调色板的顺序。\
    例如 `-##Grayscale` 是反序的 ##Grayscale 预设调色板（从白色开始而非黑色）。
* **`(start:end)`** - <mark style="color:orange;">**子调色板**</mark>:
  * 返回调色板的一部分。\
    例如 `##Grayscale(1:8)` 将返回 ##Grayscale 预设调色板的前 8 个方块。
* **`*`** - <mark style="color:orange;">**重复器**</mark>:
  * 将前一个段落重复指定的次数。\
    例如 `gold_block*10,diamond_block` 将返回一个由 10 个金块组成的调色板，随后是一个钻石块。
* **`[]`** - <mark style="color:orange;">**分组**</mark>:
  * 将调色板组合在一起，以便修饰符将其视为单个调色板。\
    例如 `-##Grayscale,gold_block` 将返回反序的 ##Grayscale 预设调色板，末尾带有一个金块。而 `-[##Grayscale,gold_block]` 则会将金块返回在开头。
* **`=`** - <mark style="color:orange;">**结果**</mark>:
  * 如果需要，允许将调色板通过 Tab 键补全为其方块列表。

### 视频教程

[MegRae](https://megrae.art/) 也制作了一个关于调色板的教程：

{% embed url="https://youtu.be/VGsTle3g9AU" %}