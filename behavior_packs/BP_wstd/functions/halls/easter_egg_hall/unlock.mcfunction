## 解锁彩蛋关卡时
fill 28 10 35 28 11 36 air[] destroy
kill @e[type=item]
scoreboard players set @s stats 40
execute @a ~~~ playsound random.levelup @s
tellraw @a {"rawtext":[{"translate":"chat.easter_egg_levels.unlocked"}]}
function system/functionality_items_controller