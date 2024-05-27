# Palette Commands

All sub-commands are under `//ezpalette`  (`//ezp`) \
e.g `//ezpalette list`



## `//ezpalette ...`

### `fetch <fetchMode> <paletteName> [length] [-d <direction>] [-f] [-s]`

<details>

<summary>Fetch Palette</summary>

Saves a user-defined palette with a given name.\
* **Fetch Mode**: From where to fetch the palette blocks:
  * **`WORLD`**
    - Takes the blocks from the player's position
  * **`SELECTION`**
    - Takes the blocks from the player's selection
    - Selection must be 1x1xN in size, where N is the desired palette length
  * **`HOTBAR`**
    - Takes blocks from the player's hotbar
    - Ignores items and uses default block properties

* **Length** (Default: 0): How many block to fecth. A length of 0 (default) will fetch blocks until air is reached.\
* **-d **(Default: me): The direction to fetch in. Defaults to the direction the user is facing.\
* **-f**: When activated, overwrites existing the palette with the same name.

<img src="../.gitbook/assets/ezp_fetch.gif" alt="" data-size="original">

</details>

### `save <paletteName> <palette> [-f]`

Saves a user-defined palette with a given name.\
* **-f**: When activated, overwrites existing the palette with the same name.

### `delete <paletteName>`

Deletes a user-defined palette matching the given name.

### `list [SET]`

* `ALL`\
  Lists all available palettes
* `DEFAULT`\
  Lists all default plugin palettes
* `MINE`\
  Lists all user-defined palettes

### `place <palette> [direction]`

Places a palette in the world as a row of blocks in the given direction.\
Direction defaults to the direction the user is facing.

### `swap <sourcePalette> <targetPalette> [-a] [-f]`

Region operation which swaps the blocks of the source palette with those of the target palette.\
* **-a**: Activate to include air blocks (if the source palette contains air).\
* **-f**: Activate to stretch the tartget palette to match the size of the source palette.

### `print <palette> [-v]`

Prints the blocks of a given palette in chat. Block list can be clicked to copy.

**-v**: Verbose mode. Will print full block name and block states.

### `encode <palette>`

Prints an encoded string representing a given palette. Click the string to copy.\
_Only supports vanilla Minecraft blocks._

### `decode <string>`

Prints the blocks of a given encoded palette string. Block list can be clicked to copy.
