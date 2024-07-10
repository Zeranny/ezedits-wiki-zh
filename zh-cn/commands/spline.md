# Spline

All sub-commands are under `//ezspline`  (`//ezsp`) \
e.g `//ezspline beads`

_Note that every spline can only be run with a Convex Selection type (\`//sel convex\`)._

## `//ezspline ...`

### `beads`

<details>

<summary>Bead Spline</summary>

**`//ezsp beads <pattern> <radii> [-p <kb_parameters>] [-q <quality>]`** \
**`[-n <normalMode>] [-g] [-h]`**

Generates a beads-shaped spline along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>

### `chainlink`

<details>

<summary>Chain Link Spline</summary>

**`//ezsp chainlink <pattern> <radii> [inner] [offset] [stretch] [spin] [-p <kb_parameters>] [-q <quality>] [-n <normalMode>] [-g] [-h]`**

Generates a chainlink-shaped spline along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **Inner** (Default: 1.0): The inner radius ratio of each link.
* **Offset** (Default: 0.0): Amount to offset each link by, adjusting the alignment of the links in the chain.
* **Stretch** (Default: 1.0): The amount to stretch the individual links along the chain.
* **Spin** (Default: 0.0): Adds twist to the spline.
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>

### `cubes`

<details>

<summary>Cube Spline</summary>

**`//ezsp cubes <pattern> <radii> [gap] [-p <kb_parameters>] [-q <quality>] [-n <normalMode>] [-g] [-h]`**

Generates a spline out of cubes along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **Gap** (Default: 1.0): Sets the gap between cubes.
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>

### `expression`

<details>

<summary>Expression Spline</summary>

**`//ezsp expression <pattern> <radii> [spin] <expression> [-p <kb_parameters>] [-q <quality>] [-n <normalMode>] [-g] [-h]`**

Generates a spline shaped by the given WorldEdit expression along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **Spin** (Default: 0): Adds twist to the spline.
* **Expression**: The WorldEdit expression defining the shape of the spline. Supports "x", "y", "z" as variables.
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

Example of an expression spline:\
`//ezsp expression red 20,5 0 -q 4 z^2+y^2<2-x%2`\
_Note that the expression must come last_

</details>

### `fishnet`

<details>

<summary>Fishnet Spline</summary>

**`//ezsp fishnet <pattern> <radii> [spacing] [depth] [width] [-p <kb_parameters>] [-q <quality>] [-n <normalMode>] [-g] [-h]`**

Generates a fishnet-shaped spline along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **Spacing** (Default: 10): The mesh spacing of the net..
* **Depth** (Default: 2): The depth of each string within the net.
* **Width** (Default: 2): The width of each string.
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>

### `noise`

<details>

<summary>Noise Spline</summary>

**`//ezsp noise <pattern> <radii> [strength] [stretch] [spin] <noise> [-p <kb_parameters>] [-q <quality>] [-n <normalMode>] [-g] [-h]`**

Creates a noise-based spline along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **Strength** (Default: 0.5): Determines the noise strength, affecting the intensity of the noise.
* **Stretch** (Default: 4.0): Controls the stretch factor of noise along the spline.
* **Spin** (Default: 0): Adds twist to the spline.
* **Noise** (Default: `Perlin(Freq:3)`): Specifies the type of noise to use for generation.
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>

### `oscillate`

<details>

<summary>Oscillation Spline</summary>

**`//ezsp oscillate <pattern> <radii> [depth] [interval] [-p <kb_parameters>] [-q <quality>] [-n <normalMode>] [-g] [-h]`**

Generates a spline with an oscillating thickness along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **Depth** (Default: 2): Determines the ridge depth of the oscillation, affecting the amplitude of the waves.
* **Interval** (Default: 5): Sets the ridge interval, controlling the frequency of the oscillation along the spline.
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>

### `polygon`

<details>

<summary>Polygonal Spline</summary>

**`//ezsp polygon <pattern> <radii> [sides] [spin] [-p <kb_parameters>] [-q <quality>] [-n <normalMode>] [-g] [-h]`**

Creates a regular polygon-shaped spline along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **Sides** (Default: 6): Determines the number of sides to the polygon.
* **Spin** (Default: 0.0): Adds twist to the spline.
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>

### `rope`

<details>

<summary>Rope Spline</summary>

**`//ezsp rope <pattern> <radii> [ropeCount] [spin] [-p <kb_parameters>] [-q <quality>] [-n <normalMode>] [-g] [-h]`**

Creates a rope-shaped spline along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **RopeCount** (Default: 3): Determines the number of intertwining ropes.
* **Spin** (Default: 2.0): Adds twist to the spline.
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>

### `simple`

<details>

<summary>Simple Spline</summary>

**`//ezsp simple <pattern> <radii> [-p <kb_parameters>] [-q <quality>]`** \
**`[-n <normalMode>] [-g] [-h]`**

Creates a simple cylindrical spline along the selected convex region.

* **Pattern**: Specifies the block pattern.
* **Radii**: The thickness of the spline, defined by up to three comma-separated values.\
  _A radius of 10 will be 10 from the start to the end of the spline, 10,5,15 will start at 10, decreasing to 5 around the middle, and increasing to 15 at the end._
* **-p** (Default: "0:0:0"): Sets the parameters for the flow of the spline, including tension, bias, and continuity, provided in a colon-separated format.
* **-q** (Default: 1.85): Adjusts the quality of the spline generation. Increase this value to reduce air gaps, noting that higher values increase processing time.
* **-n** (Default: "CONSISTENT"): Determines the mode for spline normal calculation.
* **-g**: When used, calculates the center radii using the geometric center for three radii.
* **-h**: Shows the help page.

</details>
