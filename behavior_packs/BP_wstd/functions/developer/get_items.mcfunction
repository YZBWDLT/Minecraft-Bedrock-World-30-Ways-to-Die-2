# 获取开发者物品

## 未开启开发者功能时
execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.not_developer_mode"}]}

## 开启开发者功能时
### 反馈
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a[scores={oplevel=..1}] {"rawtext":[{"translate":"feedback.error.oplevel_too_low"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a[m=!creative] {"rawtext":[{"translate":"feedback.error.not_creative_mode"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a[scores={oplevel=2},m=creative] {"rawtext":[{"translate":"feedback.developer.get_items"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:netherite_sword
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:command_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:chain_command_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:repeating_command_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:barrier
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:border_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:structure_block
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:structure_void
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:light_block 1 15
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:allow
execute @e[name=developerMode,scores={settings=1}] ~~~ give @a[scores={oplevel=2},m=creative] minecraft:deny