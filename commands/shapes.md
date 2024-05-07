# Shapes

All sub-commands are under `//ezshapes`  (`//ezsh`) \
e.g `//ezshapes polydome`

## `//ezshapes ...`

### `cone`

<details>

<summary>Cone</summary>

**`//ezsh cone <pattern> <radii> <height> [rotation] [-dos]`**

* **Pattern**: Specifies the block pattern.
* **Radii**: Defines the radii of the cone. The first value is for the North/South direction, and the second is for East/West. These directions can change if the cone is rotated.
* **Height**: Sets the height of the cone.
* **Rotation** (Default: 0): Determines the angle of rotation about the y-axis, in degrees. This can be aligned with the player's aiming direction if the `-o` switch is used.
* **-d**: When activated, generates the cone with the pointy side facing downwards.
* **-o**: When used, the player's aim direction is considered for the cone's rotation.
* **-s**: When used, the players selection will be moved to roughly cover the shape

</details>

### `polydome`

<details>

<summary>Polydome</summary>

**`//ezsh polydome <pattern> <sides> <radius> <height> [-vs]`**

* **Pattern**: Specifies the block pattern.&#x20;
* **Sides**: Defines the number of sides for the polydome.&#x20;
* **Radius**: Sets the radius of the polydome.&#x20;
* **Height** (Default: 1): Determines the height of the dome.&#x20;
* **-v**: Specifies a vertex pattern, altering the appearance at the vertices of the polydome.
* **-s**: When used, the players selection will be moved to roughly cover the shape

</details>

### `polygon`

<details>

<summary>Polygon</summary>

**`//ezsh polygon <pattern> <sides> <radius> <height> [direction] [-s]`** 

* **Pattern**: Specifies the block pattern.&#x20;
* **Sides**: Defines the number of sides for the polygon.&#x20;
* **Radius**: Sets the radius of the polygon.&#x20;
* **Height** (Default: 1): Determines the height of the polygon.&#x20;
* **Direction** (Default: Player AIM): Specifies the direction of placement, which can include diagonals.
* **-s**: When used, the players selection will be moved to roughly cover the shape

</details>

### `square`

<details>

<summary>Square</summary>

**`//ezsh square <pattern> <radius> <height> [-fws]`**

* **Pattern**: Specifies the block pattern.&#x20;
* **Radius**: Sets the radius of the square.&#x20;
* **Height** (Default: 1): Determines the height of the square.&#x20;
* **-f**: When activated, only the faces of the square are generated.&#x20;
* **-w**: When used, only the walls of the square are generated.
* **-s**: When used, the players selection will be moved to roughly cover the shape

</details>

### `tetrahedron`

<details>

<summary>Tetrahedron</summary>

**`//ezsh tetrahedron <pattern> <radius> [rotation] [-os]`**

* **Pattern**: Specifies the block pattern.&#x20;
* **Radius**: Sets the size of the Tetrahedron.&#x20;
* **Rotation** (Default: 0): Determines the angle of rotation about the y-axis, in degrees. This can be aligned with the player's aiming direction if the -o switch is used.&#x20;
* **-o**: When used, the player's aim direction is considered for the Tetrahedron's rotation.
* **-s**: When used, the players selection will be moved to roughly cover the shape

</details>

### `torus`

<details>

<summary>Torus</summary>

**`//ezsh torus <pattern> <major_radius> <minor_radius> <cross_section> [-os]`**

* **Pattern**: Specifies the block pattern.
* **Major Radius**: Sets the major radius of the torus.
* **Minor Radius**: Sets the minor radius of the torus.
* **Cross Section**: Determines the cross section shape of the torus 
* **-o**: When used, the rotation of the torus aligns with the player's aiming direction
* **-s**: When used, the players selection will be moved to roughly cover the shape

</details>
