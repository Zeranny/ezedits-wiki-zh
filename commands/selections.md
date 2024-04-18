# Selections

## Selection Commands

### `//selload`

<details>

<summary>Selection Load</summary>

**`//selload [selection]`**\
_Alternate for \`//ezsel load\`_

The `//selload` command retrieves a previously saved selection from the player's saved selection list.

* Selection: A previously saved selection.

</details>

### `//next`

<details>

<summary>Selection Shift</summary>

**`//next <direction> <gap>`**

The `//next` command shifts your current selection area by its own size in a specified direction.

* **Direction** (Default: Player AIM): Specifies the direction to shift the selection towards. If not provided, it defaults to the direction the player is aiming.
* **Gap** (Default: 0): An optional parameter to add an additional gap between the current selection position, and the shifted position.

</details>

### `//selhere`

<details>

<summary>Move Selection to Player</summary>

**`//selhere [selectionPosition]`**

**`Alias: //seltome`**

The `//selhere` command moves your current selection to your location.

* **SelectionPosition** (Default: POS1): Specifies which point in the selection to move to the player's position. All other points will be moved to the relative positon.
  * POS1 - The "Pos1" of the selection, or first point for convex/poly selections.
  * POS2 - The "Pos2" of the selection, or the last points for convex/poly selections.
  * CENTER - The center point of the selection

</details>

### `//ezselinvert`

<details>

<summary>Selection Invert</summary>

**`//ezselinvert`**

**`Alias: //selinvert`**

The `//ezselinvert` command reverses the order of points in your current selection.\
This will be most noticeable with convex selections as with a cuboid selection pos1 and pos2 will simply swap places, whereas a convex selection will reverse the order of every point.

</details>

### `//delpos2`

<details>

<summary>Delete Last Position</summary>

**`//delpos2`**

**`Alias: //-2`**

The `//delpos2` command removes the last secondary selection point for convex and poly selections.

</details>



## Selection Management Commands

All sub-commands are under `//ezselection`  (`//ezsel`) \
e.g `//ezsel list`

### `list [-g]`

Lists all the user's saved selections. Click a selection name to load.\
`-g` to group selections by type.

### `load <selection>`

Retrieves a previously saved selection from the player's saved selection list.

### `save <selectionName> [-f]`

Saves the user's current selection with a given name.\
`-f` to override an existing saved selection.

### `delete <selectionName>`

Deletes a user's selection with the given name.
