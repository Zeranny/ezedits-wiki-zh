# Noisegen

All sub-commands are under `//eznoisegen`  (`//noisegen`, `//ng`) \
e.g `//ng heightmap`

## `//eznoisegen ...`

### heightmap

<details>



<summary>Heightmap (2D)</summary>

**`//eznoisegen heightmap <palette> <noise> [height] [-z <zoom>] [-s <seed>] [-o <offset>] [-ct]`**

* **Palette**: Specifies the palette of blocks to use.&#x20;
* **Noise**: Defines the noise preset to use.&#x20;
* **Height** (Default: 0): Controls the height from the bottom of your selection. A value of 0 will take the selection's height.
  _Can place blocks above the selection if the height is great enough_&#x20;&#x20;
* **-z** (Default: 1): Adjusts the zoom level of the noise.&#x20;
* **-s** (Default: -1): Sets the noise seed.&#x20;
* **-o** (Default: (0,0,0)): Offsets the noise generation coordinates by a given vector (X,Y,Z).&#x20;
* **-c**: When used, centres the noise generation on the world coordinates of the selection.&#x20;
* **-t**: Enables smooth mode, specifically for snow, water, and lava blocks in the palette \[Applicable only in heightmap mode].

</details>

### terrain

<details>



<summary>Terrain (3D)</summary>

**`//eznoisegen terrain <palette> <noise> [height] [strength] [-z <scale>] [-s <seed>] [-l <smear>] [-o <offset>] [-chnt]`**

* **Palette**: Specifies the palette of blocks to use.&#x20;
* **Noise**: Defines the noise preset to use.&#x20;
* **Height** (Default: 0): Controls the height from the bottom of your selection. A value of 0 will take the selection's height.
  _Can place blocks above the selection if the height is great enough_&#x20;
* **Strength** (Default: 1,0.5,0): Takes up to 3 comma-separated values which controls the strength of noise at various heights:
  - *`0.5` would be 50% strength everywhere*
  - *`0.7,0` would be 70% strength at the very bottom and 0% at the top, with everything in-between being a smooth transition*
  - *`0,1,0` would be 0% strength at the bottom, 100% in the middle, and 0% at the top&#x20;*
* **-z** (Default: 1): Adjusts the zoom level of the noise.&#x20;
* **-s** (Default: -1): Sets the noise seed.&#x20;
* **-l** (Default: 0): Applies a vertical smear to 3D noise.&#x20;
* **-o** (Default: (0,0,0)): Offsets the noise generation coordinates by a given vector (X,Y,Z).&#x20;
* **-c**: When used, centres the noise generation on the world coordinates of the selection.

</details>

### advanced

<details>


<summary>Advanced</summary>

**`//eznoisegen <palette> <noise> [lowerThreshold] [upperThreshold] [-z <scale>] [-s <seed>] [-l <smear>] [-o <offset>] [-chnt]`**

* **Palette**: Specifies the palette of blocks to use.&#x20;
* **Noise**: Defines the noise preset to use.&#x20;
* **Lower Threshold** (Default: 0): Sets the lower threshold for noise generation, with support for WorldEdit expressions (range: 0-1.0).&#x20;
* **Upper Threshold** (Default: 0.5): Sets the upper threshold for noise generation, with support for WorldEdit expressions (range: 0-1.0).&#x20;
* **-z** (Default: 1): Adjusts the zoom level of the noise.&#x20;
* **-s** (Default: -1): Sets the noise seed.&#x20;
* **-l** (Default: 0): Applies a vertical smear to 3D noise.&#x20;
* **-o** (Default: (0,0,0)): Offsets the noise generation coordinates by a given vector (X,Y,Z).&#x20;
* **-c**: When used, centres the noise generation on the world coordinates of the selection.&#x20;
* **-h**: Activates heightmap mode using 2D noise. \
  _Heightmap mode is only compatible with Cuboid, Cylinder, or Polygon region types._
* **-n**: Uses normalized (-1 to 1) selection-centred coordinates for noise generation.
* **-t**: Enables smooth mode, specifically for snow, water, and lava blocks in the palette \[Applicable only in heightmap mode].

</details>