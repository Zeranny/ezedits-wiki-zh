# Surface

All sub-commands are under `//ezsurface`  (`//ezsu`) \
e.g `//ezsurface rockify`

## `//ezsurface ...`

### `fuzzify`

<details>

<summary>Fuzzify Surface</summary>

**`//ezsu fuzzify <radius> [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t]`**

Uses white noise to make the surface appear more fuzzy.

* **Radius**: A float value determining the maximum distance from the surface that modifications can occur.
* **Smooth Radius** (Default: 0): Specifies the radius for smoothing operations.
* **Smooth Iterations** (Default: 0): Determines how many times the smoothing operation is applied.
* **-c**: Restricts modifications to only carve into the terrain.
* **-e**: Limits the operation to only expand out from the terrain.
* **-m**: Applies a mask to only modify surfaces that match the specified criteria. \
  This option can significantly slow down the process due to the added complexity of matching surfaces.
* **-t**: Tries to retain the topology of the region.

</details>

### `rockify`

<details>

<summary>Rockify Surface</summary>

**`//ezsu rockify <radius> [size] [oct] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t]`**

Uses Perlin noise to make a surface rocky.

* **Radius**: A float value determining the maximum distance from the surface that modifications can occur.
* **Noise Size** (Default: 10): Controls the scale of the noise used.
* **Noise Octaves** (Default: 1): Sets the number of layers of noise applied.
* **Smooth Radius** (Default: 1): Specifies the radius for smoothing operations.
* **Smooth Iterations** (Default: 4): Determines how many times the smoothing operation is applied.
* **-c**: Restricts modifications to only carve into the terrain.
* **-e**: Limits the operation to only expand out from the terrain.
* **-m**: Applies a mask to only modify surfaces that match the specified criteria. \
  This option can significantly slow down the process due to the added complexity of matching surfaces.
* **-t**: Tries to retain the topology of the region.

</details>

### `voronoify`

<details>

<summary>Voronoify Surface</summary>

**`//ezsu voronoify <radius> [cell_size] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t]`**

Uses Voronoi noise to deform a surface.

* **Radius**: A float value determining the maximum distance from the surface that modifications can occur.
* **Cell Size** (Default: 12): Determines the average size of each cell in the Voronoi pattern, affecting the scale of the texture.
* **Smooth Radius** (Default: 0): Specifies the radius for smoothing operations.
* **Smooth Iterations** (Default: 0): Determines how many times the smoothing operation is applied.
* **-c**: Restricts modifications to only carve into the terrain.
* **-e**: Limits the operation to only expand out from the terrain.
* **-m**: Applies a mask to only modify surfaces that match the specified criteria. \
  This option can significantly slow down the process due to the added complexity of matching surfaces.
* **-t**: Tries to retain the topology of the region.

</details>

### `noisify`

<details>

<summary>Noiseify Surface</summary>

**`//ezsu noisify <radius> <noise> [scale] [smooth_radius] [smooth_iterations] [-c] [-e] [-m] [-t]`**

Uses a noise preset to deform a surface.

* **Radius**: A float value determining the maximum distance from the surface that modifications can occur.
* **Noise**: Specifies the noise to use for the modification.
* **Scale** (Default: 1): Adjusts the scale of the noise.
* **Smooth Radius** (Default: 1): Specifies the radius for smoothing operations.
* **Smooth Iterations** (Default: 4): Determines how many times the smoothing operation is applied.
* **-c**: Restricts modifications to only carve into the terrain.
* **-e**: Limits the operation to only expand out from the terrain.
* **-m**: Applies a mask to only modify surfaces that match the specified criteria. \
  This option can significantly slow down the process due to the added complexity of matching surfaces.
* **-t**: Tries to retain the topology of the region.

</details>
