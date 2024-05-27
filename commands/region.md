# Region

A miscellaneous collection of commands which operate within your selected region.

### `//ezvines`

<details>

<summary>Vines</summary>

**`//ezvines <mask> <pattern> [percentage] [min_length] [max_length]`**

**`Alias: //vines`**

* **Mask**: Specifies the mask matching blocks to hang "vines" from.&#x20;
* **Pattern**: Determines the pattern of blocks to place.&#x20;
* **Percentage** (Default: 10%): Sets the percentage of blocks to hang vines from.&#x20;
* **Min Length** (Default: 2): Specifies the minimum vine length.&#x20;
* **Max Length** (Default: 5): Defines the maximum vine length.

<img src="../.gitbook/assets/ezvines_mask.gif" alt="" data-size="original"> **`<mask>`**

<img src="../.gitbook/assets/ezvines_percentage.gif" alt="" data-size="original"> **`[percentage]`**

<img src="../.gitbook/assets/ezvines_length.gif" alt="" data-size="original"> **`[min_length] [max_length]`**

</details>

### `//ezmoss`

<details>

<summary>Moss</summary>

**`//ezmoss <pattern> [amount] [smooth_radii] [smooth_iterations]`**

**`Alias: //moss`**

* **Pattern**: Determines the block pattern to use for the moss.&#x20;
* **Amount** (Default: 2.0): Specifies the amount of moss to place. Decimal values are allowed, and values are somewhat arbitrary.&#x20;
* **Smooth Radii** (Default: 1): Sets the smoothing radii for the moss placement. Can be one radius or three comma-separated radii, in the order of East/West, Up/Down, North/South.&#x20;
* **Smooth Iterations** (Default: 5): Defines the number of smoothing iterations to apply.

<img src="../.gitbook/assets/ezmoss_amount.gif" alt="" data-size="original"> **`[amount]`**

<img src="../.gitbook/assets/ezmoss_radius.gif" alt="" data-size="original"> **`[smooth_radii]`**

<img src="../.gitbook/assets/ezmoss_radii.gif" alt="" data-size="original"> **`[smooth_radii]`**

<img src="../.gitbook/assets/ezmoss_iterations.gif" alt="" data-size="original"> **`[smooth_iterations]`**

</details>

### `//ezslabmerge`

<details>

<summary>SlabMerge</summary>

**`//ezslabmerge <mask> [-b] [-t]`**

**`Alias: //slabmerge`**

* **Mask**: Specifies the mask to select which blocks to affect within the region.&#x20;
* **-b**: When used, will also convert bottom slabs to full blocks.&#x20;
* **-t**: When used, will also convert top slabs to full blocks.&#x20;

</details>

### `//ezstatecyle`

<details>

<summary>StateCycle</summary>

**`//ezstatecycle <mask> <state>`**

**`Alias: //statecycle`**

* **Mask**: Specifies the mask to select which blocks to affect within the region.&#x20;
* **State**: Identifies the block state value to cycle through for each block in the selection.

</details>
