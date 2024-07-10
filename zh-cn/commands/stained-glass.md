# Stained Glass

Commands related to using stained glass for color.

### `//ezstainedglassgradient`

<details>

<summary>Glass Gradient</summary>

**`//ezstainedglassgradient <startColor> [endColor] <layers> [length] [quality] [direction] [-c <backgroundColor>] [-bs]`**

**`Aliases: //stainedglassgradient, //glassgradient`**

* **StartColor**: Specifies the starting color (as a Hex code) for the gradient.
* **EndColor** (Default: None): Specifies the end color (as a Hex code) for the gradient. If no value is provided, then the start color will be used for the whole gradient.
* **Layers**: How many layers of glass to use in creating the gradient.
* **Length** (Default: 1): How many blocks long should the gradient be.
* **Quality** (Default: 7): How accurate should the gradient be. A higher value may take longer to run.
* **-c** (Default: #000000): Specifies the background colour (as a Hex code) that the gradient is on if **-b** flag is not used.
* **-b**: Finds the closest solid block to place behind the glass to increase color accuracy. This is much more resource intensive.
* **-s**: Skip duplicate layer combinations.

</details>
