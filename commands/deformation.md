# Deformation

All sub-commands are under `//ezdeform`  (`//ezd`) \
e.g `//ezdeform hexagonalize`

## `//ezdeform ...`

### `hexagonalize`

<details>

<summary>Hexagonalize</summary>

**`//ezdeform hexagonalize [size] [air_gap] [x_rotation] [z_rotation] [offset_angle]`**&#x20;

* **Size** (Default: 12): Sets the size of hexagons.&#x20;
* **Air Gap** (Default: 0.0): Defines the width of the air gap between columns.&#x20;
* **X Rotation** (Default: 0.0): Sets the column rotation angle along the X-axis, in degrees.&#x20;
* **Z Rotation** (Default: 0.0): Sets the column rotation angle along the Z-axis, in degrees.&#x20;
* **Offset Angle** (Default: 60.0): Adjusts the offset angle, controlling the shape (range: 0-90 degrees).

</details>

### `noise`

<details>

<summary>Noise</summary>

**`//ezdeform noise <noise> [strength] [-z <scale>] [-s <seed>]`**

* **Noise**: Specifies the type of noise to use for deformation.&#x20;
* **Strength** (Default: 2.0): Sets the strength of the noise effect.&#x20;
* **Scale** (Default: 1): Determines the scale of the noise.&#x20;
* **-s** (Default: -1): Optional seed for the noise pattern.&#x20;
* **-h**: When used, only deforms the region horizontally.&#x20;
* **-v**: When used, only deforms the region vertically.

</details>

### `rotate`

<details>

<summary>Rotate</summary>

**`//ezdeform rotate <angle> [-o]`**&#x20;

* **Angle**: Sets the angle of rotation, in degrees.&#x20;
* **-o**: When used, uses the player's position as the center of rotation instead of the selection's center.

</details>

### `voronoialize`

<details>

<summary>Voronoialize</summary>

**`//ezdeform voronoialize [size] [air_gap] [-s <seed>]`**

* **Size** (Default: 12): Determines the size of the voronoi cells.&#x20;
* **Air Gap** (Default: 0.0): Specifies the width of the air gap between cells.&#x20;
* **-s** (Default: -1): Optional seed for generating the pattern.

</details>

### `voronoialize2`

<details>

<summary>Placeholder Name</summary>

**`//ezdeform voronoialize2 <amount> [air_gap] [-s <seed>] [-r <seed_repulsion>] [-n <normalOffset>]`**

* **Amount**: Specifies the cell amount in the voronoi pattern.&#x20;
* **Air Gap** (Default: 0.0): Determines the width of the air gap between cells.&#x20;
* **-s** (Default: -1): Optional seed for generating the pattern.&#x20;
* **-r** (Default: 15): Sets the voronoi seed point repulsion factor.&#x20;
* **-n** (Default: 5): Adjusts the normal offset factor, which can be decreased for thinner shapes.

</details>

### `voxelize`

<details>

<summary>Voxelize</summary>

**`//ezdeform voxelize <scales> <gap> <distortion> [-i <primary>] [-j <secondary>] [-s <seed>] [-hv]`**

* **Scales** (Default: 3,3,3): Sets the scale for each dimension.&#x20;
* **Gap** (Default: 0.0): Defines the width of the air gap between voxels.
* **Distortion** (Default: 0.0): Adjusts the strength of random grid distortion (range: 0-1).&#x20;
* **-i** (Default: y): Specifies the primary axis for grid rotation.&#x20;
* **-j** (Default: -x): Specifies the secondary axis for grid rotation.&#x20;
* **-s** (Default: -1): Optional seed for random distortion.&#x20;
* **-h**: When used, only voxelizes horizontally.&#x20;
* **-v**: When used, only voxelizes vertically.

</details>
