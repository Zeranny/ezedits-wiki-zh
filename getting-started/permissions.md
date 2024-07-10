---
description: ezEdits权限列表
---

# 权限节点

<table>
<thead>
<tr>
<th width="274">权限节点</th>
<th width="327">描述</th>
<th>权限包</th>
</tr>
</thead>
<tbody>
<tr>
<td>ezedits.general.wiki</td>
<td><strong>/ezedits wiki</strong><br>在聊天中打印此wiki的链接</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.general.info</td>
<td><strong>/ezedits info</strong><br>在聊天中打印基本插件信息</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.admin.reload</td>
<td><strong>/ezedits reload</strong><br>重新加载配置</td>
<td>Admin</td>
</tr>
<tr>
<td>ezedits.brush.gradient</td>
<td><strong>//ezbr gradient</strong><br>将渐变刷绑定到一个物品上</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.brush.gradientstroke</td>
<td><strong>//ezbr gradientstroke</strong><br>将路径渐变笔刷绑定到一个物品上</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.brush.paletteshift</td>
<td><strong>//ezbr paletteshift</strong><br>将调色板移位笔刷绑定到一个物品上</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.debug</td>
<td><strong>//debugez ...</strong><br>各种调试命令<br>正常使用不需要</td>
<td>Admin</td>
</tr>
<tr>
<td>ezedits.debug.loadingbar</td>
<td><strong>//debugez clearLoadingBars</strong><br>清除屏幕上任何任务的进度条。</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.deform.hexagonalize</td>
<td><strong>//ezdeform hexagonalize</strong><br>将选区内的方块变形成六边形柱</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.deform.noise</td>
<td><strong>//ezdeform noise</strong><br>根据给定的噪声变形选区内的方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.deform.rotate</td>
<td><strong>//ezdeform rotate</strong><br>旋转选区内的方块</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.deform.voronoialize</td>
<td><strong>//ezdeform voronoialize</strong><br>将选区内的方块变形成voronoialize</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.deform.voronoialize2</td>
<td><strong>//ezdeform voronoialize2</strong><br>将选区内的方块变形成voronoialize</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.deform.voxelize</td>
<td><strong>//ezdeform voxelize</strong><br>将选区内的方块变形成体素块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.flow.flowfield</td>
<td><strong>//ezflowfield</strong><br>在选区内生成一个流场</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.flow.flowline</td>
<td><strong>//ezflowline</strong><br>从玩家位置创建一条流动线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.gen.cone</td>
<td><strong>//ezshapes cone</strong><br>在玩家位置生成一个圆锥体</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.gen.polydome</td>
<td><strong>//ezshapes polydome</strong><br>在玩家位置生成一个多面体圆顶</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.gen.polygon</td>
<td><strong>//ezshapes polygon</strong><br>在玩家位置生成一个多边形</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.gen.square</td>
<td><strong>//ezshapes square</strong><br>在玩家位置生成一个正方形</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.gen.tetrahedron</td>
<td><strong>//ezshapes tetrahedron</strong><br>在玩家位置生成一个四面体</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.gen.torus</td>
<td><strong>//ezshapes torus</strong><br>在玩家位置生成一个环形体</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.mask.aim</td>
<td><strong>#aim</strong><br>匹配目标方块的蒙板</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.mask.attached</td>
<td><strong>#attached</strong><br>匹配接触相邻方块的方块</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.mask.fullblock</td>
<td><strong>#fullblock</strong><br>匹配占据整个方块空间的方块</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.mask.light</td>
<td><strong>#truelight | #blocklight</strong><br>匹配特定光照级别范围内的方块<br>Truelight包括天空光照<br>Blocklight仅考虑方块光源</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.mask.near</td>
<td><strong>#near</strong><br>匹配蒙板给定3D范围内的方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.mask.noise</td>
<td><strong>#eznoisemask</strong><br>在噪声超过给定阈值的位置匹配方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.mask.palette</td>
<td><strong>#palette | #fuzzypalette</strong><br>匹配给定调色板内的方块。<br>Fuzzypalette忽略方块状态</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.mask.selection</td>
<td><strong>#savedselection</strong><br>匹配保存选区内的方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.mask.vectorgradient</td>
<td><strong>#vectorgradientmask</strong><br>匹配沿给定向量位置梯度超过阈值的方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.noise.delete</td>
<td><strong>//eznoise delete</strong><br>删除保存的噪声预设</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.noise.list</td>
<td><strong>//eznoise list</strong><br>列出所有保存的噪声预设</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.noise.print</td>
<td><strong>//eznoise print</strong><br>打印保存的噪声预设参数</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.noise.save</td>
<td><strong>//eznoise save</strong><br>保存噪声预设</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.decode</td>
<td><strong>//ezpalette decode</strong><br>打印给定编码调色板字符串中的方块。</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.delete</td>
<td><strong>//ezpalette delete</strong><br>删除保存的调色板</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.encode</td>
<td><strong>//ezpalette encode</strong><br>将调色板编码为较短的文本字符串</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.fetch</td>
<td><strong>//ezpalette fetch</strong><br>从世界或玩家快捷栏中获取方块并保存为调色板</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.list</td>
<td><strong>//ezpalette list</strong><br>列出所有保存的调色板</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.place</td>
<td><strong>//ezpalette place</strong><br>将保存的调色板放置到世界中</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.print</td>
<td><strong>//ezpalette print</strong><br>打印保存的调色板中的方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.save</td>
<td><strong>//ezpalette save</strong><br>保存调色板</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.palettes.swap</td>
<td><strong>//ezpalette swap</strong><br>交换与另一个调色板对应的方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.pattern.aim</td>
<td><strong>#aim</strong><br>使用目标方块作为模式</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.pattern.noise</td>
<td><strong>#eznoisepattern</strong><br>使用噪声预设放置调色板方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.pattern.palette</td>
<td><strong>#palette</strong><br>将调色板中的方块视为简单列出</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.pattern.selection</td>
<td><strong>#selection</strong><br>基于保存选择位置的当前世界设置方块。好像该区域被平铺/堆叠了一样</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.pattern.vectorgradient</td>
<td><strong>#vectorgradientpattern</strong><br>沿给定长度的向量设置调色板方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.region.moss</td>
<td><strong>//ezmoss</strong><br>在平面上放置一层方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.region.noisegen</td>
<td><strong>//eznoisegen ...</strong><br>使用噪声在区域内放置方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.region.solidslab</td>
<td><strong>//ezslabmerge</strong><br>将双层台阶转换为完整方块</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.region.statecycle</td>
<td><strong>//ezstatecycle</strong><br>循环选择中所有方块的给定方块状态</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.region.vines</td>
<td><strong>//ezvines</strong><br>从给定蒙板挂起像藤蔓一样的方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.scatter</td>
<td><strong>//ezscatter</strong><br>在选区的表面散布一个形状</td>
<td>Advanced</td>
</tr>
<tr>
<td>ezedits.selection.delete</td>
<td><strong>//ezselection delete</strong><br>删除保存的选择</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.selection.delpos</td>
<td><strong>//-2</strong><br>删除选择中的最后一个点</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.selection.here</td>
<td><strong>//selhere</strong><br>将选择移动到玩家位置</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.selection.invert</td>
<td><strong>//selinvert</strong><br>反转选择中的点顺序</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.selection.list</td>
<td><strong>//ezselection list</strong><br>列出所有保存的选择</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.selection.load</td>
<td><strong>//selload</strong><br>加载保存的选择</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.selection.next</td>
<td><strong>//next</strong><br>按自身大小向给定方向移动选择</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.selection.save</td>
<td><strong>//ezselection save</strong><br>保存当前选择</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.smooth.deflate</td>
<td><strong>//ezdeflate</strong><br>收缩选区内的方块</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.smooth.ezsmooth</td>
<td><strong>//ezsmooth</strong><br>平滑选区</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.smooth.inflate</td>
<td><strong>//ezinflate</strong><br>扩展选区内的方块</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.smooth.smoothblocks</td>
<td><strong>//ezsmoothblocks</strong><br>使用台阶、半砖和平滑选区</td>
<td>Advanced</td>
</tr>
<tr>
<td>ezedits.spline.beads</td>
<td><strong>//ezspline beads</strong><br>生成一个珠子形状的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.chainlink</td>
<td><strong>//ezspline chainlink</strong><br>生成一个链环形状的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.cubes</td>
<td><strong>//ezspline cubes</strong><br>生成一个立方体形状的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.expression</td>
<td><strong>//ezspline expression</strong><br>生成一个由给定表达式形状的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.fishnet</td>
<td><strong>//ezspline fishnet</strong><br>生成一个鱼网形状的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.noise</td>
<td><strong>//ezspline noise</strong><br>生成一个噪声变形的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.oscillate</td>
<td><strong>//ezspline oscillate</strong><br>生成一个振荡形状的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.polygon</td>
<td><strong>//ezspline polygon</strong><br>生成一个多边形形状的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.rope</td>
<td><strong>//ezspline rope</strong><br>生成一个绳索形状的样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.spline.simple</td>
<td><strong>//ezspline simple</strong><br>生成一个简单的圆柱样条曲线</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.stainedglass.gradient</td>
<td><strong>//stainedglassgradient</strong><br>使用染色玻璃层生成颜色渐变</td>
<td>Basic</td>
</tr>
<tr>
<td>ezedits.stainedglass.image</td>
<td><strong>//stainedglassimage</strong><br>使用染色玻璃层生成图像</td>
<td>Experimental</td>
</tr>
<tr>
<td>ezedits.surface.fuzzify</td>
<td><strong>//ezsurface fuzzify</strong><br>使用白噪声使区域内方块表面更“模糊”</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.surface.noisify</td>
<td><strong>//ezsurface noisify</strong><br>使用给定的噪声变形区域内方块表面</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.surface.rockify</td>
<td><strong>//ezsurface rockify</strong><br>使用噪声使区域内方块表面更“岩石化”</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.surface.voronoify</td>
<td><strong>//ezsurface voronoify</strong><br>使用voronoify噪声改变区域内方块表面</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.symmetry.reflectional</td>
<td><strong>//ezsymmetry reflectional | reflectional3d</strong><br>启动反射对称模式</td>
<td>Experimental</td>
</tr>
<tr>
<td>ezedits.symmetry.rotational</td>
<td><strong>//ezsymmetry rotational</strong><br>启动旋转对称模式</td>
<td>Experimental</td>
</tr>
<tr>
<td>ezedits.symmetry.translational</td>
<td><strong>//ezsymmetry translational</strong><br>启动平移对称模式</td>
<td>Experimental</td>
</tr>
<tr>
<td>ezedits.symmetry.update</td>
<td><strong>//ezsymmetry update</strong><br>根据对称类型更新方块以匹配更改</td>
<td>Experimental</td>
</tr>
<tr>
<td>ezedits.texture.advanced</td>
<td><strong>//eztexture advanced</strong><br>混合多种纹理</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.ambient</td>
<td><strong>//eztexture ambient</strong><br>通过近似环境为区域纹理化</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.axisgradient</td>
<td><strong>//eztexture axisgradient</strong><br>使用轴对齐渐变为区域纹理化</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.blend</td>
<td><strong>//eztexture blend</strong><br>混合相邻方块的调色板方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.blocklight</td>
<td><strong>//eztexture blocklight</strong><br>根据游戏中的方块光照级别为区域纹理化</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.cells</td>
<td><strong>//eztexture cells</strong><br>使用voronoify噪声绘制单元纹理</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.curvature</td>
<td><strong>//eztexture curvature</strong><br>通过近似3D曲率为区域纹理化</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.surfaceflow</td>
<td><strong>//eztexture flow</strong><br>使用表面流场为区域纹理化</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.noise</td>
<td><strong>//eztexture noise</strong><br>使用给定的噪声为区域纹理化</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.pointlight</td>
<td><strong>//eztexture pointlight</strong><br>根据表面朝向点光源的程度为区域纹理化</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.shift</td>
<td><strong>//eztexture shift</strong><br>按给定数量偏移调色板中的方块</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.texture.sunlight</td>
<td><strong>//eztexture sunlight</strong><br>根据表面朝向全局光源的程度为区域纹理化</td>
<td>Intermediate</td>
</tr>
<tr>
<td>ezedits.tools.superwand</td>
<td><strong>//superwand</strong><br>高级选择工具</td>
<td>Basic</td>
</tr>
</tbody>
</table>

