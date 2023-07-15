# 开启阅读规则的进程

## 设置关卡ID
scoreboard players set @e[name=level] backend -17

## 清除所有物品
clear @a

## 给予规则和下一步
execute @a ~~~ function settings/map_rule
replaceitem entity @a slot.hotbar 4 wstd:next_step 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

## 清空房间
fill 41 21 -21 49 25 -29 air

## 播放音效
execute @a ~~~ playsound random.levelup @s ~~~ 1 2