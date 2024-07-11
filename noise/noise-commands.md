# 噪声命令

所有指令都在主命令 `//eznoise`  (`//ezn`) 下\
例如 `//eznoise list`

## `//eznoise ...`

### `list [SET]`

* `ALL`\
  列出所有可用的噪声预设
* `DEFAULT`\
  列出所有默认的插件噪声预设
* `MINE`\
  列出所有用户定义的噪声预设

### `save <presetName> <noise> [-f]`

使用给定的名称保存用户定义的噪声预设。\
使用 `-f` 可以覆盖现有的噪声预设。

### `delete <presetName>`

删除与给定名称匹配的用户定义噪声预设。

### `print <noise>`

在聊天中打印给定噪声预设的设置。
