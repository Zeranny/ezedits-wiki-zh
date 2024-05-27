# Brushes

All brushes are contained within the `//ezbrush ...` (`//ezbr`) command.



## `//ezbrush ...`

### `gradient`

<details>

<summary>Gradient Brush</summary>

**`//ezbr gradient <palette> [radius] [interpolation] [strength] [-av] [-n <noise>] [-z <scale>] [-d <distanceFunction>]`**

The `gradient` brush allows you to first define a plane by selecting 2 points, you can then paint with your gradient with blocks chosen based on distance along this plane.

**<u>Left Click</u> to start a plane at your target block**\
**<u>Sneak + Left Click</u> to start a plane at the player position**\
**<u>Right Click</u> to set the end of the plane at your target block OR paint palette blocks if the plane is set**\
**<u>Sneak + Right Click</u> to set the end of the plane at the player position OR paint palette blocks if the plane is set**\
**<u>Swap Hands (Default F key)</u> to toggle between GLOBAL and PER_ITEM active gradients**

* **Palette**: Specifies the palette to use for the gradient.
* **Radius** (Default: 8): Sets the radius of the brush.
* **Interpolation** (Default: NONE): Determines the type of interpolation used in the gradient transition.
* **Strength** (Default: 0.5): Adjusts the strength of interpolation, with a normal range from 0 to 1.
* **-a**: When activated, allows the gradient to replace air blocks.
* **-v**: Deactivates WorldEditCUI integration.
* **-n \<noise>** (Default: `White()`): Adds an underlying noise field to the gradient effect.
* **-z \<scale>** (Default: 1): Modifies the scale of the noise.
* **-d \<distanceFunction>** (Default: NONE): Sets the distance mode changing the brush to work based on distance from the initial block with the given distance function.

</details>

### `gradientstroke`

<details>

<summary>Gradient Stroke Brush</summary>

**`//ezbr gradientstroke <palette> [radius] [interpolation] [strength] [-adv] [-n <noise>] [-z <scale>]`**

The `gradientstroke` brush allows for gradient application along a path (stroke) defined by selecting points.

**<u>Left Click</u> to add points**\
**<u>Sneak + Left Click</u> to remove the last point**\
**<u>Right Click</u> to confirm & place the gradient stroke**\
**<u>Sneak + Right Click</u> to clear all points**\
**<u>Swap Hands (Default F key)</u> to toggle between GLOBAL and PER_ITEM active gradients**

* **Palette**: Specifies the block pattern for the gradient.
* **Radius** (Default: 8): Sets the radius of the brush.
* **Interpolation** (Default: LINEAR): Determines the type of interpolation used in the gradient transition.
* **Strength** (Default: 0.5): Adjusts the strength of interpolation, with a normal range from 0 to 1.
* **-a**: When activated, allows the gradient to replace air blocks.
* **-d**: Activates the 'distance to center' mode which applies the gradient based on distance to the middle of the stroke line instead of distance along the stroke.
* **-v**: Deactivates WorldEditCUI integration.
* **-n \<noise>** (Default: `White()`): Adds an underlying noise field to the gradient effect.
* **-z \<scale>** (Default: 1): Modifies the scale of the noise.

</details>

### `paletteshift`

<details>

<summary>Palette Shift Brush</summary>

**`//ezbr paletteshift <palette> [radius] [shift]`**

Replaces blocks matching the palette with palette blocks shifted along by the given amount.\
For example, a shift value of 2 will replace any instances of the first palette block with the third.

* **Palette**: Specifies the block pattern for the gradient.
* **Radius** (Default: 8): Sets the radius of the brush.
* **Shift** (Default: 1): The amount by which to shift blocks within palette

</details>
