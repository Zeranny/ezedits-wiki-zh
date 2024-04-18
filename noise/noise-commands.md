# Noise Commands

All sub-commands are under `//eznoise`  (`//ezn`) \
e.g `//eznoise list`

## `//eznoise ...`

### `list [SET]`

* `ALL`\
  Lists all available noise presets
* `DEFAULT`\
  Lists all default plugin noise presets
* `MINE`\
  Lists all user-defined noise presets

### `save <presetName> <noise> [-f]`

Saves a user-defined noise preset with a given name.\
`-f` to override an existing noise preset.

### `delete <presetName>`

Deletes a user-defined noise preset matching the given name.

### `print <noise>`

Prints the settings of a given noise preset in chat.
