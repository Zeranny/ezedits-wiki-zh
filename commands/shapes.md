# Shapes

All sub-commands are under `//ezshapes`  (`//ezsh`) \
e.g `//ezshapes polydome`

## `//ezshapes ...`

### `cone`

<details>

<summary>Cone</summary>

**`//ezsh cone <pattern> <radii> <height> [rotation] [-do]`**

* **Pattern**: Specifies the block pattern.
* **Radii**: Defines the radii of the cone. The first value is for the North/South direction, and the second is for East/West. These directions can change if the cone is rotated.
* **Height**: Sets the height of the cone.
* **Rotation** (Default: 0): Determines the angle of rotation about the y-axis, in degrees. This can be aligned with the player's aiming direction if the `-o` switch is used.
* **-d**: When activated, generates the cone with the pointy side facing downwards.
* **-o**: When used, the player's aim direction is considered for the cone's rotation.

</details>

### `polydome`

<details>

<summary>Polydome</summary>

`//ezsh polydome <pattern> <sides> <radius> <height> [-v]`

* **Pattern**: Specifies the block pattern.&#x20;
* **Sides**: Defines the number of sides for the polydome.&#x20;
* **Radius**: Sets the radius of the polydome.&#x20;
* **Height** (Default: 1): Determines the height of the dome.&#x20;
* **-v**: Specifies a vertex pattern, altering the appearance at the vertices of the polydome.

</details>

### `polygon`

<details>

<summary>Polygon</summary>

`//ezsh polygon <pattern> <sides> <radius> <height> [direction]`

* **Pattern**: Specifies the block pattern.&#x20;
* **Sides**: Defines the number of sides for the polygon.&#x20;
* **Radius**: Sets the radius of the polygon.&#x20;
* **Height** (Default: 1): Determines the height of the polygon.&#x20;
* **Direction** (Default: Player AIM): Specifies the direction of placement, which can include diagonals.

</details>

### `square`

<details>

<summary>Square</summary>

`//ezsh square <pattern> <radius> <height> [-fw]`

* **Pattern**: Specifies the block pattern.&#x20;
* **Radius**: Sets the radius of the square.&#x20;
* **Height** (Default: 1): Determines the height of the square.&#x20;
* **-f**: When activated, only the faces of the square are generated.&#x20;
* **-w**: When used, only the walls of the square are generated.

</details>

### `tetrahedron`

<details>

<summary>Tetrahedron</summary>

**`//ezsh tetrahedron [rotation] [-o]`**

* **Pattern**: Specifies the block pattern.&#x20;
* **Radius**: Sets the size of the Tetrahedron.&#x20;
* **Rotation** (Default: 0): Determines the angle of rotation about the y-axis, in degrees. This can be aligned with the player's aiming direction if the -o switch is used.&#x20;
* **-o**: When used, the player's aim direction is considered for the Tetrahedron's rotation.

</details>

### `torus`

<details>

<summary>Torus</summary>

**`//ezsh torus <major_radius> <minor_radius> [-dors]`**

* **Pattern**: Specifies the block pattern.
* **Major Radius**: Sets the major radius of the torus.
* **Minor Radius**: Sets the minor radius of the torus.
* **-d**: Creates a torus with a diamond cross-section.
* **-o**: When used, the rotation of the torus aligns with the player's aiming direction.
* **-r**: Creates a torus with a rounded-square cross-section.
* **-s**: Creates a torus with a square cross-section.

</details>
