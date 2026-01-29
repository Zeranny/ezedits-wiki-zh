---
description: 高级选区选择与编辑工具
---

# 超级魔杖 (SuperWand)

超级魔杖（俗称"小木斧"的增强版）提供了四种功能各异的模式，用于点选和操作方块，极大地扩展了区域选择的灵活性。

**强烈推荐使用 WorldEditCUI：** [**https://modrinth.com/mod/worldedit-cui**](https://modrinth.com/mod/worldedit-cui)

### 模式

1. <mark style="color:orange;">**追踪模式 (Tracing)**</mark>：直接选择你准星指向的方块。
2. <mark style="color:orange;">**位置模式 (Location)**</mark>：选择玩家当前脚下所在位置的方块。
3. <mark style="color:orange;">**相对模式 (Relative)**</mark>：基于上一个选点和玩家准星指向的方向来计算并选择新点。
4. <mark style="color:orange;">**抓取模式 (Grab)**</mark>：允许你直接"拾起"并移动某个选点或整个选区。

### 控制

* <mark style="color:blue;">**右键点击**</mark>：
  * **点选模式下**：设置新选点。若选点数量已达上限，则替换最近的一个点。
  * **抓取模式下**：拾起某个点或整个选区，随玩家移动而移动。
* <mark style="color:blue;">**左键点击**</mark>：
  * **点选模式下**：撤销上一个设置的点。
  * **抓取模式下**：放下当前正抓取的点或选区。
* <mark style="color:blue;">**潜行 (Sneak) + 左键点击**</mark>：循环切换工具的功能模式。
* <mark style="color:blue;">**副手交换 (默认 F 键)**</mark>：反转选区内点的排列顺序。
* <mark style="color:blue;">**潜行 (Sneak) + 副手交换**</mark>：按顺序轮换选区内所有点的位置。
