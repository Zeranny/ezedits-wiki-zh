# 调色板命令

所有子命令都在 `//ezpalette` (`//ezp`) 命令下\
例如 `//ezpalette list`

## `//ezpalette ...`

### `fetch <fetchMode> <paletteName> [length] [-d <direction>] [-f]`

<details>

<summary>获取调色板</summary>

保存一个用户定义的调色板并为其指定一个名称。

* **获取模式**: 从哪里获取调色板中的方块：
  * **`WORLD`**
    * 从玩家的位置获取方块。
  * **`SELECTION`**
    * 从玩家的选择区域获取方块。 
    * 选择区域必须为 1x1xN 大小，其中 N 是所需的调色板长度。
  * **`HOTBAR`**
    * 从玩家的快捷栏中获取方块。
    * 忽略物品并使用默认的方块属性。
* **长度** (默认值: 0): 要获取的方块数量。长度为 0（默认值）将获取方块，直到遇到空气为止。
* **-d** (默认值: me): 获取的方向。默认值为用户面对的方向。
* **-f**: 激活时，覆盖同名现有调色板。

<img src="../.gitbook/assets/ezp_fetch.gif" alt="" data-size="original">

</details>

### `save <paletteName> <palette> [-f]`

保存具有指定名称的用户定义调色板。

* **-f**: 激活时，覆盖具有相同名称的现有调色板。

### `delete <paletteName>`

删除与指定名称匹配的用户定义调色板。

### `list [SET]`

* `ALL`\
  列出所有可用的调色板
* `DEFAULT`\
  列出所有默认的插件调色板
* `MINE`\
  列出所有用户定义的调色板

### `place <palette> [direction]`

在指定方向上将调色板作为一行方块放置在世界中。\
方向默认是用户面朝的方向。

### `swap <sourcePalette> <targetPalette> [-a] [-f]`

区域操作，将源调色板的方块与目标调色板的方块交换。

* **-a**: 激活以包括空气方块（如果源调色板包含空气）。
* **-f**: 激活以拉伸目标调色板以匹配源调色板的大小。

### `print <palette> [-v]`

在聊天中打印给定调色板的方块。方块列表可以点击复制。

**-v**: 详细模式。将打印完整的方块名称和方块状态。

### `encode <palette>`

打印表示给定调色板的编码字符串。点击字符串即可复制。\
_仅支持原版Minecraft方块。_

### `decode <string>`

打印给定编码调色板字符串的方块。方块列表可以点击复制。
