<!-- langmirror:chunk 0 -->
# 选区

## 选区命令

### `//selload`

<details>

<summary>加载选区</summary>

**`//selload [selection] [-h]`**

*`//ezsel load` 的替代命令*

`//selload` 命令从玩家保存的选区列表中检索先前保存的选区。

* Selection: 先前保存的选区。
* **-h**: 加载时将选区移动到玩家位置

</details>

### `//next`

<details>
<summary>移动选区</summary>

**`//next <direction> <gap>`**

`//next` 命令将当前选区按其自身大小在指定方向上移动。

* **Direction** (默认: 玩家瞄准方向): 指定选区移动的方向。如果未提供,则默认为玩家瞄准的方向。
* **Gap** (默认: 0): 可选参数,用于在当前选区位置和移动后位置之间添加额外间隙。

</details>

### `//selhere`

<details>

<summary>将选区移动到玩家位置</summary>

**`//selhere [selectionPosition]`**

**`别名: //seltome`**

`//selhere` 命令将当前选区移动到你的位置。

* **SelectionPosition** (默认: POS1): 指定选区中哪个点移动到玩家位置。所有其他点将移动到相对位置。
  * POS1 - 选区的"Pos1",或凸选区/多边形选区的第一个点。
  * POS2 - 选区的"Pos2",或凸选区/多边形选区的最后一个点。
  * CENTER - 选区的中心点

</details>

### `//ezselinvert`

<details>

<summary>反转选区</summary>

**`//ezselinvert`**

**`别名: //selinvert`**

`//ezselinvert` 命令反转当前选区中点的顺序。\
这在凸选区中最为明显,因为对于长方体选区,pos1 和 pos2 只是简单地交换位置,而凸选区会反转每个点的顺序。

</details>

### `//delpos2`

<details>

<summary>删除最后一个位置</summary>

**`//delpos2`**

**`别名: //-2`**

<!-- langmirror:chunk 1 -->
`//delpos2` 命令移除凸选区和多边形选区的最后一个次要选择点。

</details>

### `//encapsulate`

<details>
<summary>封装选区中的方块</summary>

**`//encapsulate <mask>`**

**`别名: //enc`**

`//encapsulate` 命令获取你现有的选区，并将其更改为包含与给定蒙版匹配的方块的最小立方体选区。

* **Mask**: 要封装的方块

</details>

### `//encapsulatenear`

<details>
<summary>在新选区中封装附近的方块</summary>

**`//encapsulatenear <radius> <mask>`**

**`别名: //encnear`**

`//encapsulatenear` 命令创建一个新选区，该选区是包含半径范围内与给定蒙版匹配的方块的最小立方体选区。

* **Radius**: 搜索匹配方块的立方体半径
* **Mask**: 要封装的方块

</details>

## 选区管理命令

所有子命令都在 `//ezselection` (`//ezsel`) 下\
例如 `//ezsel list`

### `list [-g]`

列出用户所有已保存的选区。点击选区名称以加载。\
`-g` 按类型分组显示选区。

### `load <selection>`

从玩家的已保存选区列表中检索先前保存的选区。

### `save <selectionName> [-f]`

使用给定名称保存用户当前的选区。\
`-f` 覆盖现有的已保存选区。

### `delete <selectionName>`

删除用户具有给定名称的选区。