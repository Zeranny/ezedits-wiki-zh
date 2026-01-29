<!-- langmirror:chunk 0 -->
# 调色板命令 (Palette Commands)

所有子命令都位于 `//ezpalette` (`//ezp`) 之下\
例如 `//ezpalette list`

## `//ezpalette ...`

### `fetch <fetchMode> <paletteName> [length] [-d <direction>] [-f]`

<details>

<summary>获取调色板 (Fetch Palette)</summary>

以给定名称保存用户定义的调色板。

* **Fetch Mode（获取模式）**: 从何处获取调色板方块：
  * **`WORLD`**
    * 从玩家所在位置获取方块
  * **`SELECTION`**
    * 从玩家的选区中获取方块
    * 选区大小必须为 1x1xN，其中 N 为所需的调色板长度
  * **`HOTBAR`**
    * 从玩家的快捷栏中获取方块
    * 忽略物品并使用默认方块属性
* **Length（长度）** (默认值: 0): 要获取的方块数量。长度为 0（默认）将持续获取方块直到遇到空气。
* **-d** (默认值: me): 获取的方向。默认为用户面向的方向。
* **-f**: 激活时，覆盖具有相同名称的现有调色板。

<img src="../.gitbook/assets/ezp_fetch.gif" alt="" data-size="original">

</details>

### `save <paletteName> <palette> [-f]`

以给定名称保存用户定义的调色板。

* **-f**: 激活时，覆盖具有相同名称的现有调色板。

### `delete <paletteName>`

删除与给定名称匹配的用户定义调色板。

### `list [SET]`

* `ALL`\
  列出所有可用的调色板
* `DEFAULT`\
  列出所有插件默认调色板
* `MINE`\
  列出所有用户定义的调色板

### `place <palette> [direction]`

将调色板作为一排方块放置在世界中指定的方向。\
方向默认为用户面向的方向。

### `swap <sourcePalette> <targetPalette> [-a] [-f]`

区域操作，将源调色板 (source palette) 的方块替换为目标调色板 (target palette) 的方块。

<!-- langmirror:chunk 1 -->
* **-a**: 启用后忽略源调色板中的空气方块。
* **-s**: 启用后将拉伸目标调色板，以匹配源调色板的大小。
* **-f**: 启用模糊匹配模式。忽略源调色板方块的方块状态（block states）。
* **-b**: 将源调色板方块的方块状态复制到目标调色板。

### `print <palette> [-v]`

在聊天栏中打印指定调色板的方块。可以点击方块列表进行复制。

**-v**: 详细模式。将打印完整的方块名称和方块状态。

### `encode <palette>`

打印代表给定调色板的编码字符串。点击字符串即可复制。\
&#xNAN;_仅支持原版 Minecraft 方块。_

### `decode <string>`

打印给定编码调色板字符串中的方块。可以点击方块列表进行复制。