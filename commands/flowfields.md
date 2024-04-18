# Flowfields

Commands based off the concept of "Flow Fields", often seen in generative art.

Conceptually they use some function (noise in our case), to generate a set of vectors along a grid, or field, which will dictate how particles flow through that field.

### `//ezflowfield`

<details>

<summary>Flow Field</summary>

**`//ezflowfield <palette> <lines> <iterations> <velocity> <paletteScalar> <noise> [-m <source>] [-h <distributionMode>] [-i <inertia>] [-g <gravity>] [-j <jitter>] [-b <boundary>] [-x <xMod>] [-y <yMod>] [-z <zMod>] [-p <progression>] [-s <seed>] [-c] [-f] [-t]`**

**`Alias: //flow`**

Generates a flow field within a selection, creating dynamic pattern based on the many available parameters.

* **Palette**: Specifies the palette of blocks to be used in generating the flowfield.
* **Lines**: Defines the number of lines or a percentage distribution to determine how densely the flowfield is populated within the selection.\
  e.g `100` will generate 100 lines, `100%` will generate 1 line for every block in the region.
* **Iterations** (Default: 32): The number of iterations or steps per line controlling how long they will be.
* **Velocity** (Default: 1): The speed at which points move across the surface.
* **PaletteScalar** (Default: 1.0): Scales the value used to select a palette block.
* **Noise** (Default: \[Type:Perlin]): The type of noise used to generate the flowfield.
* **-m**: Applies a mask to limit the flow's start points, focusing the effect on specific areas.
* **-h**: Enables heightmap mode for creating 2D flowfields, with optional block distribution modes.
* **-i** (Default: 0.0): Sets the inertia weighting of the flow, controlling how much previous movement directions influence the next.
* **-g** (Default: (0,0,0) ): Applies gravity to points, pulling them in the specified direction.
* **-j** (Default: (0,0,0) ): Adds jitter to the start points of lines. Useful with `-m` flag.
* **-b** (Default: 0): Expands the calculation boundary without placing blocks outside the original selection. Does not place blocks outside the selection.
* **-x, -y, -z**: Modify the coordinates of the flow, allowing for transformations like scaling or rotation. Takes in a WorldEdit expression, e.g `-x *10` to multiply the x axis by 10.
* **-p** (Default: 1:1): Adjusts the strength of the line as it progresses, accepts negative values to either start or end on a point strength that subtracts from the flow field.
* **-s** (Default: -1): Overrides the default noise seed.
* **-c**: Returns the curl of the field.
* **-f**: Fills gaps with the lowest block in the palette.
* **-t**: Generates a 3D flowfield instead. May require a lot of time to generate.

</details>

### `//ezflowline`

<details>

<summary>Flow Line</summary>

**`/ezflowline <pattern> <length> <gravity> <noise> [-i <inertia>] [-c <convexSelPoints>] [-s]`**

**`Alias: //flowline`**

Generates a single flow-line based on the actor's position and viewing direction.\
The same fundamental premise as a Flow Field, but only generating 1 line.

* **Pattern**: Determines the pattern of blocks to place.&#x20;
* **Length**: Sets the length of the flowline in blocks. This defines how far the flowline will extend from the starting point.
* **Gravity** (Default: -1): Applies gravity to points, pulling them in the specified direction.
* **Noise** (Default: \[Type:Perlin]): The type of noise used to generate the flowfield.
* **-i** (Default: 0.0): Adjusts the point inertia weighting, controlling how much previous movement directions influence future directions. A value between 0.0 and 1.0.
* **-c** (Default: 0): If greater than 0, creates a convex selection out of the flowline, using the specified number of points to define the selection's shape.
* **-s**: Enables snapping of the flowline to surfaces, making the line adhere to the contours of the landscape or structures it intersects.

</details>
