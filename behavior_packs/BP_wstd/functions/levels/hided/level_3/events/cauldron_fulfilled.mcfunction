# ===== 炼药锅被填满后 =====

## 给予玩家蜘蛛眼
give @p spider_eye
## 提示玩家
tellraw @p {"rawtext":[{"translate":"chat.level.hided_3.gift"}]}
## 重置炼药锅
setblock -89 22 107 cauldron ["cauldron_liquid"="water","fill_level"=0]
