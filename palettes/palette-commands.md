# Palette Commands

All sub-commands are under `//ezpalette`  (`//ezp`) \
e.g `//ezpalette list`



## `//ezpalette ...`

### `fetch <paletteName> [direction] [length] [-f]`

<details>

<summary>Fetch Palette</summary>

Saves a user-defined palette with a given name.\
Direction defaults to the direction the user is facing.\
A length of 0 (default) will fetch blocks until air is reached.\
`-f` to override an existing palette.

<img src="../.gitbook/assets/ezp_fetch.gif" alt="" data-size="original">

</details>

### `save <paletteName> <palette> [-f]`

Saves a user-defined palette with a given name.\
`-f` to override an existing palette.

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

### `swap <sourcePalette> <targetPalette> [-af]`

Region operation which swaps the blocks of the source palette with those of the target palette.\
`-a`  to include air blocks (if the source palette contains air)\
`-f` to stretch the tartget palette to match the size of the source palette.

### `print <palette>`

Prints the blocks of a given palette in chat. Block list can be clicked to copy.

### `encode <palette>`

Prints an encoded string representing a given palette. Click the string to copy.\
_Only supports vanilla Minecraft blocks._

### `decode <string>`

Prints the blocks of a given encoded palette string. Block list can be clicked to copy.
