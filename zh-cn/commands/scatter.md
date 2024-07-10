---
description: Surface Shape Scatterer
---

# Scatter

The `//ezscatter` (`//ezsc`) command scatters a shape across the surface of blocks within your selection.

It comes with a number of pre-defined shapes as well as the ability to use WorldEdit expressions to define your own shape.

{% code overflow="wrap" %}
```
//ezscatter [-s <dimensions>] [-o <sizeMultiplier>] [-n <density>] [-c <angleDeg>] [-k <rotationAxis>] [-i <primaryAxis>] [-j <secondaryAxis>] [-d <filterDirections>] [-e <filterThreshold>] [-m <maskFilter>] [-p <palette>] <shape> [-a] [-b] [-r] [-u] [-w]
```
{% endcode %}

<details>

<summary><mark style="color:red;"><strong>&#x3C;shape></strong></mark></summary>

**Current shapes**

_Additional parameters are given within the parenthesis after a shape._

* bean
* cube
* curl
* cylinder
* ellipsoid
* fur
* leaf
* lemon
* onion
* polygon(*Sides*)
* pyramid(*Sides*)
* spike
* supersphere(*Exponent*)
* tetrahedron
* torus(*Thickness*)

In addition to these, you can also define your own shape with a WorldEdit expression

**`Expression;<expression>`**
or
**`Expr;<expression>`**

For example, this expression will create spirals:\
`//ezsc expr;x+=sin(2*pi*y)/2;z+=cos(2*pi*y)/2;x*x+z*z<0.3^2`



</details>

* **Shape**: Specifies the type of shape to scatter.
* **-s** (Default: "20"): Defines the size of the shapes to scatter. Can specify one size for uniform shapes or three for (X,Y,Z).
* **-o** (Default: "0.8"): Controls the difference in size between sets of shapes. Set to 1 for constant sizing.
* **-n** (Default: "2.0%"): Controls how densely the shapes are scattered across the region, as a percentage.
* **-c** (Default: "0"): Specifies the angle of rotation for the shapes.
* **-k** (Default: "up"): Determines the axis around which the shape rotates.\
  If **CONSTANT**:
  * **-i** (Default: "y"): Defines the primary axis for shape orientation.
  * **-j** (Default: "x"): Defines the secondary axis for shape orientation.
* **-d**: Limits placement to specific directions.
  * **-e** (Default: "0.5"): Strengthens or weakens the directional filter effect.
* **-m**: Restricts shape placement to surface blocks matching the specified mask.
* **-p**: Chooses the block palette to use for the scattered shapes. If not set, uses existing blocks.
* **-a**: Won't place air if enabled.
* **-b**: Skips placing shapes that partially fall outside the region.
* **-r**: Aligns shapes with the surface normal.
* **-u**: Disables uniform seed point distribution, allowing for more random shape placements.
* **-w**: Removes the original shape, leaving only the scattered shapes.
