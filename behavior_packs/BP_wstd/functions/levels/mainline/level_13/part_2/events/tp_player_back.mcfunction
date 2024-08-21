# ===== 将玩家传送回房间 =====

## 给予没有末影珍珠的玩家以末影珍珠
give @s[hasitem={item=ender_pearl,quantity=0}] ender_pearl

## 显示消息
function lib/modify_states/dialogue/enable_2

## 将玩家传送回来
tp @s -20 22 63 facing -26 22 57

## 将玩家的血量回满
effect @s instant_health 1 10 true
