# Palettes Explained

Palettes in ezEdits represent a list of blocks that can be used in several commands where the order of blocks will be maintained.\


Palettes can be saved and accessed using the **`#`** prefix for user-saved palettes, and **`##`** for inbuilt preset palettes.\
e.g `##wool` represents the inbuilt wool palette starting from white wool, orange wool up to red wool and finally black wool.&#x20;



Palettes can be constructed as a simple list of blocks, or via several modifiers:

* &#x20;**`,`** - Concatenate: Adds one block or palette on to the end of the preceding block or palette.\
  e.g `stone,dirt` is a 2 block palette of stone and dirt. `stone,##wool` is a palette made of stone and the blocks of the ##wool preset palette.
* &#x20;**`-`** - Invert: Reverses the order of a palette.\
  e.g `-##wool` is the wool preset palette in reverse order (starts with black instead of white)
* &#x20;**`(start:end)`** - Sub-palette: Returns a portion of a palette.\
  e.g `##wool(1:8)` will return the first 8 blocks of the ##wool preset palette.
* &#x20;**`*`** - Repeater: Repeats the previous segment a given number of times.\
  e.g `gold_block*10,diamond_block` will return a palette of 10 gold blocks, followed by a single diamond block.
* &#x20;**`[]`** - Grouping: Groups palettes together to allow a modifer to treat them as a single palette.\
  e.g `-##wool,gold_block` will return the ##wool preset palette in reverse order, with a gold block at the end. Where `-[##wool,gold_block]` will return the gold block at the start.
* &#x20;**`=`** - Result: Allows a palette to be tab-completed into its list of blocks if needed.



**##wool preset palette:**

<figure><img src="../.gitbook/assets/2024-02-04_19.31.54.png" alt=""><figcaption></figcaption></figure>

