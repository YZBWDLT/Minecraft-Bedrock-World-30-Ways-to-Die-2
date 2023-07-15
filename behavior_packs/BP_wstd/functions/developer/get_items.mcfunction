# 获取开发者物品

## 未开启开发者功能时
execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

## 开启开发者功能时
### 反馈
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a[scores={oplevel=..1}] {"rawtext":[{"translate":"chat.error.oplevel_too_low"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a[m=!creative] {"rawtext":[{"translate":"chat.error.not_creative_mode"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a[scores={oplevel=2},m=creative] {"rawtext":[{"translate":"chat.developer.get_items"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] netherite_sword
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] command_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] chain_command_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] repeating_command_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] barrier
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] border_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] structure_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] structure_void
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] light_block 1 15
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] allow
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] deny