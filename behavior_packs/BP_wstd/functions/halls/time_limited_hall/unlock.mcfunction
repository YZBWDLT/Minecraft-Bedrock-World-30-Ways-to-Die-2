## 解锁限时关卡
scoreboard players set @e[name=timeLimitedAdvancement] stats 35
execute @a ~~~ playsound random.levelup @s
tellraw @a {"rawtext":[{"translate":"chat.unlocked.time_limited_levels"}]}
function system/functionality_items_controller