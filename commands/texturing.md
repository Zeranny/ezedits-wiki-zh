# Texturing

All sub-commands are under `//eztexture`  (`//ezt`) \
e.g `//eztexture ambient`

## `//eztexture ...`

### `ambient`

<details>

<summary>Ambient Texture</summary>

**`//ezt ambient <mask> <palette> [radius] [brightness] [contrast]`**

Textures by approximating the ambience of blocks in the region.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **Radius** (Default: 3): The radius within which the command assesses ambient differences. A larger radius considers a broader area for each calculation, leading to smoother transitions.
* **Brightness** (Default: 0.0): Adjusts the bias towards the start or end of the palette. Higher values strengthen the start of the palette, while lower values emphasize the end.
* **Contrast** (Default: 0.0): Amplifies or reduces the difference between the smoothed ambient field and local variations, enhancing or softening the texture's impact.

</details>

### `axisgradient`

<details>

<summary>Axis Gradient Texture</summary>

**`//ezt axisgradient <mask> <palette> [axis] [-r]`**

Textures a region using a gradient aligned to  a single axis.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **Axis** (Default: "y"): Determines the axis along which the gradient is applied ('x', 'y', or 'z'), guiding the direction of the gradient flow.
* **-r**: Activates relative gradient mode, stretching the palette across whole columns.

</details>

### `blend`

<details>

<summary>Blend Texture</summary>

**`//ezt blend <palette> [radius] [-v]`**

Blends palette blocks within a region.

* **Palette**: Specifies the palette to use for blending.
* **Radius** (Default: "0.5"): Determines the radius of blending, affecting how broadly the blend effect is applied around each block.
* **-v**: Activates full blend mode, allowing for the blending of non-surface blocks.

</details>

### `blocklight`

<details>

<summary>Blocklight Texture</summary>

**`//ezt blocklight <mask> <palette> [-v] [-s]`**

Textures a region based on in-game block light levels, excluding skylight.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **-v**: When activated, only considers the light level directly above the block.
* **-s**: When activated, will consider skylight levels.

</details>

### `cells`

<details>

<summary>Cells Texture</summary>

**`//ezt cells <mask> <palette> <amount> [brightness] [contrast] [-s] [-r]`**

Textures a region with a cell-like pattern.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **Amount**: Determines the amount of the cells within the texture.
* **Brightness** (Default: 0.0): Adjusts the bias towards the start or end of the palette. Higher value strengthens the start of the palette, lower strengthens the end.
* **Contrast** (Default: 0.0): Modifies the contrast between cells, enhancing the definition and separation of the pattern.
* **-s** (Default: -1): Optional seed for generating the cell pattern.
* **-r** (Default: 5): Sets the repulsion factor for seed points in the Voronoi diagram, influencing the shape and distribution of cells.

</details>

### `curvature`

<details>

<summary>Curvature Texture</summary>

**`//ezt curvature <mask> <palette> [radius] [brightness] [contrast]`**

Textures a region by approximating curvature.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **Radius** (Default: 3): Specifies the radius within which curvature is calculated, influencing the subtlety or prominence of the effect.
* **Brightness** (Default: 0.0): Adjusts the bias towards the start or end of the palette. Higher values strengthen the start of the palette, while lower values emphasize the end.
* **Contrast** (Default: 0.0): Modifies the contrast between areas of different curvature, enhancing the definition and separation of the pattern.

</details>

### `flow`

<details>

<summary>Flow Texture</summary>

**`//ezt flow <mask> <palette> [exposure] [iterations] [velocity] [paletteScalar] [noise] [-m] [-g] [-f]`**

Generates a flowfield effect across all surfaces within the selection.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **Exposure** (Default: 0.6): Controls the overall density of the flow lines, affecting how much of the palette is used.
* **Iterations per Line** (Default: 32): The number of steps taken to draw each line, with more iterations producing longer lines.
* **Point Velocity** (Default: 0.5): The speed at which points move across the surface.
* **Palette Index Scalar** (Default: 1.0): Scales the value used to select a palette block.
* **Noise** (Default: \[Type:Perlin]): The type of noise used to generate the flowfield.
* **-m**: Point momentum weighting, blending previous movement directions.
* **-g**: Applies gravity to points, pulling them in the specified direction.
* **-f**: Fills gaps with the lowest palette block.

</details>

### `noise`

<details>

<summary>Noise Texture</summary>

**`//ezt noise <mask> <palette> <noise> [-z] [-s]`**

Textures a region using a given noise.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **Noise** (Default: `Perlin(Freq:0.05)`): Sets the noise to be used.
* **-z** (Default: 1): Adjusts the scale of the noise.
* **-s** (Default: -1): Optional seed value for generating the noise pattern.

</details>

### `pointlight`

<details>

<summary>Pointlight Texture</summary>

**`//ezt pointlight <mask> <palette> [falloffRange] [radius] [interval] [-l] [-o] [-r][-f]`**

Textures a region based on the orientation of surfaces relative to a light source.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **Falloff Range** (Default: 0): Sets the falloff range, which is the brightness of the light point. If set to 0, the distance between the player and the region's centre is used.
* **Radius** (Default: 1): Specifies the normal approximation radius, affecting the softness of the light's edge.
* **Interval** (Default: "0,90"): Defines the surface orientation interval in degrees, where 0 is facing directly towards the light, and 180 is facing away. Surfaces within this interval are textured, and any below or above will be textured with the first or last palette block.
* **-f**: Disables light falloff, applying uniform light intensity across the entire region, regardless of distance from the light source.
* **-l**: Changes the light source position to the given coordinates, otherwise uses the player's position.
* **-o** (Default: 0.0): Determines the strength of occlusion. A higher value results in "darker" shadows. Expected range of 0-1.
* **-r** (Default: 1): Determines the smoothing radius for occlusion (shadows).

</details>

### `shift`

<details>

<summary>Shift Texture</summary>

**`//ezt shift <palette> [shift]`**

Modifies the texturing of a region by shifting the palette by a set amount.

* **Palette**: Specifies the palette to use.
* **Shift** (Default: 1): Determines how many blocks within the palette to shift by.

</details>

### `sunlight`

<details>

<summary>Sunlight Texture</summary>

**`//ezt sunlight <mask> <palette> [radius] [interval] [-l] [-o] [-r]`**

Textures a region using a global light source direction to control the application of the palette.

* **Mask**: Blocks to replace.
* **Palette**: Specifies the palette to use.
* **Radius** (Default: 1): Defines the normal approximation radius, affecting the calculation of how surfaces are oriented relative to the sunlight.
* **Interval** (Default: "0,180"): Defines the surface orientation interval in degrees, where 0 is facing directly towards the light, and 180 is facing away. Surfaces within this interval are textured, and any below or above will be textured with the first or last palette block.
* **-l** (Default: down): Global direction into which the light shines.
* **-o** (Default: 0.0): Determines the strength of occlusion. A higher value results in "darker" shadows. Expected range of 0-1.
* **-r** (Default: 1): Determines the smoothing radius for occlusion (shadows).

</details>

### `advanced`

<details>

<summary>Advanced Texturing</summary>

**`//ezt advanced <mask> <palette> <texture>`**

More powerful interface of using eztexture. It has access to all other eztexture commands and can also mix/combine them.
Meaning you can for example do ambient and sunlight texturing simultaneously.

- **Mask**: Blocks to replace.
- **Palette**: Specifies the palette to use.
- **Texture**: A Texturing specification.

#### How to define a `<texture>`?

A `<texture>` follows the following common way of specifying complex objects:
```<type>(<parameter1>:<value1>,<parameter2>:<value2>)```
Each Texture type has its own set of parameters. You can set as many parameters as you like. If a parameter is not set, a default value will be used instead. Each parameter can have different inputs it accepts. Some parameters accept numbers, some accept a 3D vector, some accept a Noise argument, and some even accept Texture objects themselves.
A `<texture>` can be any of the existing texture modes. Some simples examples:
- `Ambient`
- `Ambient()`
- `Ambient(Radius:2)`
- `Ambient(Radius:2,Brightness:0.2,Contrast:0.3)`
- `Flow(Noise:@@ridged(Freq:0.12))`

To clarify: The following two commands will do the same.
- `//eztexture ambient #existing ##grayscale 2 0.2 0.3`
- `//eztexture advanced #existing ##grayscale Ambient(Radius:2,Brightness:0.2,Contrast:0.3)`

#### Combining textures

The following textures have `Texture1`(`T1`)/`Texture2`(`T2`) parameters accepting `<texture>` arguments themselves allowing you to combine texture modes:
- `Add(T1:...,T2:...)`
- `Subtract(T1:...,T2:...)`
- `Multiply(T1:...,T2:...)`
- `Divide(T1:...,T2:...)`
- `WeightedAverage(T1:...,T2:...)`
- `Darken(T1:...,T2:...)`
- `Lighten(T1:...,T2:...)`
- `Difference(T1:...,T2:...)`
- `Screen(T1:...,T2:...)`

The following textures have `Texture`(`T`) parameters accepting `<texture>` arguments themselves allowing you adjust/post-process textures:
- `Adjust(T:...,Brightness:...,Contrast:...)`
- `Invert(T:...)`
- `Blend(T:...,Radius:...)`

Examples:
- `WeightedAverage(T1:Sun(),T2:Ambient())`
- `Blend(T:Flow(Noise:@@ridged(Freq:0.12)),Radius:0.7)`
- `Darken(T1:Noise(Noise:@@smoothcells(freq:0.5)),T2:Flow)`
- `Adjust(T:Pointlight,Contrast:0.5)`

Please note that the `Texture`/`Texture1`/`Texture2` (`T`/`T1`/`T2`) are not optional. You must set them to use these combining/adjusting textures. (If you do not set them you'll receive an error saying `cannot be null`).

</details>
