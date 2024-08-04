# ===== 重置命令系统 =====
# 玩家使用物品“重置命令系统”时执行，执行者为玩家

## 加载新的命令系统模板
structure load diy_levels:command_system -107 1 -21

## 进行提示
tellraw @a {"rawtext":[{"translate":"chat.item.reset_command_system"}]} 
