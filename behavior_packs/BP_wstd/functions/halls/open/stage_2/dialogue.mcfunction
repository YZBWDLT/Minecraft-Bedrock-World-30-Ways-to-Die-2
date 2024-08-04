# ===== 剧情线 =====

## 地图名
execute if score dialogue time matches 40 as @a run titleraw @s title { "rawtext": [ { "translate": "title.map_name" } ] }
execute if score dialogue time matches 40 as @a at @s run playsound random.orb @s ~~~ 1 2

## 作者 一只卑微的量筒
execute if score dialogue time matches 120 as @a run titleraw @s title { "rawtext": [ { "translate": "title.empty" } ] }
execute if score dialogue time matches 120 as @a run titleraw @s subtitle { "rawtext": [ { "translate": "subtitle.open_1" } ] }
execute if score dialogue time matches 120 as @a at @s run playsound random.orb @s ~~~ 1 2

## 出品 极筑工坊
execute if score dialogue time matches 200 as @a run titleraw @s title { "rawtext": [ { "translate": "title.empty" } ] }
execute if score dialogue time matches 200 as @a run titleraw @s subtitle { "rawtext": [ { "translate": "subtitle.open_2" } ] }
execute if score dialogue time matches 200 as @a at @s run playsound random.orb @s ~~~ 1 2

## 开启音乐提示
execute if score dialogue time matches 280 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.music.on"}]}
execute if score dialogue time matches 280 as @a at @s run playsound random.orb @s ~~~ 1 2

## 改为创造模式
execute if score dialogue time matches 300 as @a run titleraw @s actionbar { "rawtext": [ { "translate": "actionbar.open_1" } ] }
execute if score dialogue time matches 300 as @a at @s run playsound random.pop @s ~~~ 1 2

## 清除物品
execute if score dialogue time matches 320 as @a run titleraw @s actionbar { "rawtext": [ { "translate": "actionbar.open_2" } ] }
execute if score dialogue time matches 320 as @a at @s run playsound random.pop @s ~~~ 1 2

## 调整难度
execute if score dialogue time matches 340 as @a run titleraw @s actionbar { "rawtext": [ { "translate": "actionbar.open_3" } ] }
execute if score dialogue time matches 340 as @a at @s run playsound random.pop @s ~~~ 1 2

## 时间设置
execute if score dialogue time matches 360 as @a run titleraw @s actionbar { "rawtext": [ { "translate": "actionbar.open_4" } ] }
execute if score dialogue time matches 360 as @a at @s run playsound random.pop @s ~~~ 1 2

## gamerule锁定
execute if score dialogue time matches 380 as @a run titleraw @s actionbar { "rawtext": [ { "translate": "actionbar.open_5" } ] }
execute if score dialogue time matches 380 as @a at @s run playsound random.pop @s ~~~ 1 2

## 准备进入教程
execute if score dialogue time matches 400 as @a run titleraw @s actionbar { "rawtext": [ { "translate": "actionbar.open_6" } ] }
execute if score dialogue time matches 400 as @a at @s run playsound random.levelup @s ~~~ 1 2

## 关闭剧情线
execute if score dialogue time matches 401 run function lib/modify_states/dialogue/disable
