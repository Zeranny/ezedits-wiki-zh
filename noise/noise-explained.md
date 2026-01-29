<!-- langmirror:chunk 0 -->
# 噪声功能详解 (Noise Explained)

对于初学者来说，**噪声 (Noise)** 可能是一个比较抽象的概念。简单理解，噪声是一种基于某些输入（通常是 X,Y,Z 坐标）来计算并返回特定数值的数学方法。

你最熟悉的噪声应用场景可能是 Minecraft 的地形生成：在世界的每一个点上，系统会组合多个噪声函数来决定该坐标应当放置哪种方块，或者是否留空。

在 ezEdits 中，我们利用噪声来辅助生成几何形状、模拟自然地形以及复杂的铺色纹理。

插件内置了多种噪声类型，每种类型都有独特的视觉特征。其中 **Cellular (细胞噪声)** 拥有最丰富的自定义参数。

噪声的核心应用场景包括：

* `//eznoisegen ...` - [噪声生成指令](noise-commands.md)
* `#eznoisemask` - [噪声蒙版](../masks-and-patterns/masks.md)
* `//ezbrush gradient ...` - [梯度渐变笔刷](../brushes-and-tools/brushes/)

_ezEdits 的噪声系统基于 FastNoiseLite 的优化版本。我们强烈建议你在以下网站实验各种参数以获得直观感受：_[http://auburn.github.io/FastNoiseLite/](http://auburn.github.io/FastNoiseLite/)

## 噪声参数 (Noise Parameters)

大多数参数和数值都有对应的简写，例如用 `ft` 代替 `FractalType` (分形类型)。在说明中，简写会标注在括号内。\
<mark style="color:red;">`红色 = 参数`</mark> <mark style="color:purple;">`紫色 = 数值`</mark>

### 噪声类型 (Noise Type)

<details>

<summary>设置基础噪声类型</summary>

这是定义噪声的第一步，基本格式为 `类型()`，如 `Perlin()`。所有的配置参数都将写在括号内。

<!-- langmirror:chunk 1 -->
* <mark style="color:purple;">`Perlin (Pe)`</mark> - 柏林噪声（最经典，过渡自然）
* <mark style="color:purple;">`OpenSimplex2 (Si)`</mark> - 改进后的 Simplex 噪声
* <mark style="color:purple;">`OpenSimplex2S (Sm)`</mark> - 更平滑的 Simplex 变体
* <mark style="color:purple;">`Value (Va)`</mark> - 值噪声（网格感略强）
* <mark style="color:purple;">`ValueCubic (VC)`</mark> - 三次插值值噪声
* <mark style="color:purple;">`White (Wh)`</mark> - 白噪声（完全随机，类似电视雪花）
* <mark style="color:purple;">`Cellular (Ce)`</mark> - 细胞噪声（沃罗诺伊图，蜂巢感）
* <mark style="color:purple;">`Shard (Sh)`</mark> - 碎片噪声

</details>

### 通用噪声参数

<details>

<summary>基础配置项</summary>

<!-- langmirror:chunk 2 -->
* <mark style="color:red;">`Seed (s)`</mark>\
  噪声种子。设为 -1 或不填将生成随机种子。
* <mark style="color:red;">`Frequency (f)`</mark>\
  频率。值越高噪声越密集/陡峭，值越低噪声越平滑/开阔。
* <mark style="color:red;">`Inverted (i)`</mark>\
  是否反转噪声值。
  * <mark style="color:purple;">`True`</mark> (反转)
  * <mark style="color:purple;">`False`</mark> (默认)
* <mark style="color:red;">`ValueMapping (m)`</mark>\
  数值映射模式。默认情况下，噪声值被映射在 0 到 1 之间。
  * <mark style="color:purple;">`Default (Def)`</mark>
  * <mark style="color:purple;">`None (No)`</mark>
  * <mark style="color:purple;">`Override (OR)`</mark>（手动覆盖映射范围）：
    * <mark style="color:red;">`LowerBound (l)`</mark> (下限)
    * <mark style="color:red;">`UpperBound (u)`</mark> (上限)
* <mark style="color:red;">`XScaling (x)`</mark>\
  可用于拉伸或挤压 X 轴。
* <mark style="color:red;">`YScaling (y)`</mark>\
  使用 3D 噪声时，可用于拉伸或挤压 Y 轴。
* <mark style="color:red;">`ZScaling (z)`</mark>\
  可用于拉伸或挤压 Z 轴。

</details>

### 细胞噪声参数 (Cellular Noise Parameters)

<details>

<summary><strong>额外细胞噪声专属参数</strong></summary>

* <mark style="color:red;">`CellularJitterModifier (cJ)`</mark> (抖动修正)\
  通常范围 `0..1.0`。控制细胞节点的随机分布。0 为完美整齐的网格，1 为最大程度的随机分布且无重叠。
* <mark style="color:red;">`CellularDistanceFunction (cD)`</mark> (距离算法)\
  控制计算点到细胞节点距离的数学方法：
<!-- langmirror:chunk 3 -->
  * <mark style="color:purple;">`Euclidean (e)`</mark> (欧几里得距离)
  * <mark style="color:purple;">`EuclideanSq (sq)`</mark> (欧几里得平方距离)
  * <mark style="color:purple;">`Manhattan (man)`</mark> (曼哈顿距离)
  * <mark style="color:purple;">`Hybrid (h)`</mark> (混合距离)
  * <mark style="color:purple;">`Minkovski1 (m1)`</mark> (闵可夫斯基 1)
  * <mark style="color:purple;">`Minkowvki4 (m4)`</mark> (闵可夫斯基 4)
  * <mark style="color:purple;">`Minkowski99 (m99)`</mark> (闵可夫斯基 99)
  * <mark style="color:purple;">`Rounded (r)`</mark> (圆角距离)
* <mark style="color:red;">`CellularReturnType (cR)`</mark> (返回类型)\
  控制最终返回的数值类型：
  * <mark style="color:purple;">`CellValue (cell)`</mark> (单元格固定值)
  * <mark style="color:purple;">`Distance (1)`</mark> (到最近点的距离)
  * <mark style="color:purple;">`DistanceSquared (sq)`</mark>
  * <mark style="color:purple;">`DistanceInverse (inv)`</mark> (距离反比)
  * <mark style="color:purple;">`DistanceLog (log)`</mark> (距离对数)
  * <mark style="color:purple;">`DistanceExp (exp)`</mark> (距离指数)
  * <mark style="color:purple;">`Distance2 (2)`</mark> (到第二近点的距离)
  * <mark style="color:purple;">`Distance2Add (2add)`</mark> / `2sub` / `2mul` / `2div` (距离运算)
  * <mark style="color:purple;">`Distance2Sq (2sq)`</mark>
  * <mark style="color:purple;">`Distance2Inv (2inv)`</mark>
<!-- langmirror:chunk 4 -->
  * <mark style="color:purple;">`Distance2Log (2log)`</mark>
  * <mark style="color:purple;">`Distance2Exp (2exp)`</mark>
  * <mark style="color:purple;">`Edge (e)`</mark> (细胞边缘模式)
  * <mark style="color:purple;">`Rounded (r)`</mark> (圆角边缘)
  * <mark style="color:purple;">`NoiseLookup (n)`</mark> (噪声查找模式)\
    当使用 NoiseLookup 时，可配置以下额外参数：
    * <mark style="color:red;">`CellularNoiseLookup (cN)`</mark>\
      控制填充在细胞结构内部的基础噪声类型。
    * <mark style="color:red;">`CellularNoiseLookupFrequency (cF)`</mark>\
      控制该基础噪声的频率。

</details>

### 碎片噪声参数 (Shard Noise)

<details>

<summary>额外 Shard 专属参数</summary>

* <mark style="color:red;">`Sharpness (h)`</mark> (锐度)\
  通常范围 `0..1.0`。值越高边缘越锋利，值越低边缘越模糊。

</details>

### 分形参数 (Fractal Parameters)

<details>

<summary>分形噪声参数</summary>

<!-- langmirror:chunk 5 -->
* <mark style="color:red;">`FractalType (fT)`</mark>\
  设置分形噪声的叠加模式。
  * <mark style="color:purple;">`None (N)`</mark> (无)
  * <mark style="color:purple;">`FBm (F)`</mark> (分形布朗运动，最常见)
  * <mark style="color:purple;">`Ridged (R)`</mark> (脊状噪声，常用于山脉)
  * <mark style="color:purple;">`PingPong (P)`</mark> (乒乓模式)\
    * <mark style="color:red;">`PingPongStrength (fP)`</mark> (乒乓强度)

**若选择了非 `None` 类型：**

* <mark style="color:red;">`Octaves (fO)`</mark> (倍频/层数)\
  分形叠加的层数。层数越多细节越丰富，但性能消耗越大。
* <mark style="color:red;">`Lacunarity (fL)`</mark> (空隙度)\
  控制每层分形之间的频率比例。通常 >1 以增加高频细节。
* <mark style="color:red;">`Gain (fG)`</mark> (增益)\
  控制每层分形的强度比例。通常 <1 使高频细节的影响力逐渐减弱。
* <mark style="color:red;">`WeightedStrength (fW)`</mark> (加权强度)\
  设置每层强度对最终噪声值的响应敏感度。

</details>

### 定义域扭曲 (Domain Warp Parameters)

<details>

<summary>噪声扭曲与变形配置</summary>

* <mark style="color:red;">`DomainWarpType (wT)`</mark>\
  定义如何让噪声产生扭曲感（如卷曲、流体感）。
  * <mark style="color:purple;">`None (N)`</mark>
  * <mark style="color:purple;">`BasicGrid (G)`</mark>
  * <mark style="color:purple;">`OpenSimplex2 (S)`</mark>
  * <mark style="color:purple;">`OpenSimplex2Reduced (R)`</mark>
  * <mark style="color:purple;">`Flow (F)`</mark>
  * <mark style="color:purple;">`Turbulence (T)`</mark> (湍流)

<!-- langmirror:chunk 6 -->
**若选择了非 `None` 的扭曲类型：**

* <mark style="color:red;">`DomainWarpFreq (wF)`</mark>\
  设置域扭曲的频率。
* <mark style="color:red;">`DomainWarpOct (wO)`</mark>\
  设置域扭曲的层数（倍频）。
* <mark style="color:red;">`DomainWarpGain (wG)`</mark>\
  设置每个域扭曲层的相对强度（增益）。
* <mark style="color:red;">`DomainWarpAmp (wA)`</mark>\
  设置域扭曲的总振幅（强度）。
* <mark style="color:red;">`DomainWarpFrac (wC)`</mark>\
  设置要使用的域扭曲特定分形类型。
  * <mark style="color:purple;">`None (N)`</mark>（无）
  * <mark style="color:purple;">`DomainWarpIndependent (I)`</mark>（独立域扭曲）
  * <mark style="color:purple;">`DomainWarpProgressive (P)`</mark>（渐进域扭曲）
* <mark style="color:red;">`DomainWarpLacunarity (wl)`</mark>\
  设置每个域扭曲层的间隙度（缩放）。

</details>

## 示例

**`Value(Seed:123,Frequency:0.04)`**

<figure><img src="../.gitbook/assets/2024-01-10_20.38.35.png" alt=""><figcaption></figcaption></figure>

**`Cellular(cellularDistanceFunction:Euclidean,cellularReturnType:NoiseLookup,cellularNoiseLookup:Perlin,cellularNoiseLookupFrequency:0.2,Frequency:0.1)`**

_同样的噪声，使用简写模式：_ **`Ce(cD:e,cR:n,cN:Pe,cF:.2,F:.1)`**

<figure><img src="../.gitbook/assets/2024-01-10_20.41.26.png" alt=""><figcaption></figcaption></figure>