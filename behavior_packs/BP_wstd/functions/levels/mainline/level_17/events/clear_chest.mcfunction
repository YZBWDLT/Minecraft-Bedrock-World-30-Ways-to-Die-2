# ===== 重置箱子 =====

## 清空原来的箱子
setblock 10 5 7 air
setblock -1 22 85 air

## 直接给予玩家刷怪蛋
give @p minecraft:skeleton_spawn_egg 27 0 { "minecraft:can_place_on": { "blocks": [ "stained_glass", "glass", "emerald_block", "quartz_block", "quartz_stairs" ] } }

## 提示玩家
tellraw @a {"rawtext":[{"text":"§7因为中国版的一个关于箱子检测的bug，所以这关就不用箱子了，直接给你物品吧！ awa"}]}
