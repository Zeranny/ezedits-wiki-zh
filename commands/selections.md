# 选区范围工具 Selections

## 选区范围命令

此处的选区范围指代的是选区的框选框架，而不是区域内的方块

### `//selload`

<details>

<summary>选区范围加载</summary>

**`//selload [selection]`**\
_`//ezsel load` 的替代命令_

`//selload` 命令从玩家的保存选区范围列表中检索先前保存的选区范围。

* **Selection**: 一个先前保存的选区范围。

</details>

### `//next`

<details>

<summary>选区范围移动</summary>

**`//next <direction> <gap>`**

`//next` 命令将当前选区范围按其自身的大小向指定方向移动。

* **Direction** (默认值: 玩家瞄准方向): 指定选区范围移动的方向。如果未提供，默认移动到玩家瞄准的方向。
* **Gap** (默认值: 0): 一个可选参数，用于在当前选区范围位置和移动后的位置之间添加额外的间隙。

</details>

### `//selhere`

<details>

<summary>将选区范围移动到玩家位置</summary>

**`//selhere [selectionPosition]`**

**`别名: //seltome`**

`//selhere` 命令将当前选区范围移动到玩家的位置。

* **SelectionPosition** (默认值: POS1): 指定选区范围中的哪个点移动到玩家的位置。所有其他点将相对移动。
  * POS1 - 选区范围的“Pos1”，或convex/poly选区范围的第一个点。
  * POS2 - 选区范围的“Pos2”，或convex/poly选区范围的最后一个点。
  * CENTER - 选区范围的中心点。

</details>

### `//ezselinvert`

<details>

<summary>选区范围反转</summary>

**`//ezselinvert`**

**`别名: //selinvert`**

`//ezselinvert` 命令反转当前选区范围中的pos的顺序。\
这在convex选区范围中最为明显，因为在长方体选区范围中，pos1 和 pos2 只是交换位置，而在convex选区范围中，所有点的顺序将被反转。

</details>

### `//delpos2`

<details>

<summary>删除最后一个位置</summary>

**`//delpos2`**

**`别名: //-2`**

`//delpos2` 命令删除convex和poly选区范围的最后一个次要选区范围点。

</details>

## 选区范围管理命令

所有子命令都在 `//ezselection` (`//ezsel`) 下 \
例如 `//ezsel list`

### `list [-g]`

列出所有用户保存的选区范围。点击选区范围名称进行加载。\
`-g` 按类型分组选区范围。

### `load <selection>`

从玩家的保存选区范围列表中检索先前保存的选区范围。

### `save <selectionName> [-f]`

使用给定的名称保存用户当前的选区范围。\
`-f` 覆盖现有的保存选区范围。

### `delete <selectionName>`

删除用户具有给定名称的选区范围。
