# ===== 清除末影珍珠 =====

## 给予没有末影珍珠的玩家以末影珍珠
give @a[hasitem={item=ender_pearl,quantity=0},c=1] ender_pearl

## 显示消息
function lib/modify_states/dialogue/enable_1

## 清除被扔出的末影珍珠
kill @s
