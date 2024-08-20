# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 33

## 通用函数
function lib/modify_data/level/start

## 重置关卡房间
structure load hided:level_1 -66 20 68

# --- 玩家 ---

## 传送玩家
tp @a -58 22 76 facing -63 22 71

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.hided_1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.hided_1"}]}

## 提醒玩家
tellraw @a {"rawtext":[{"translate":"chat.level.hided_1"}]}

# --- 特殊内容 ---

## 清除物品 | 防止重置花盆时会掉落花
kill @e[type=item]
## 生成作者NPC实体
summon wstd:creator -63 22 71 0 0 become_lt "YZBWDLT"
summon wstd:creator -62 22 70 0 0 become_bd "Andy7343"
summon wstd:creator -64 22 72 0 0 become_ngz "PumpkinJui"
summon wstd:creator -64 22 73 0 0 become_gz "PigeonKI"
summon wstd:creator -61 22 70 0 0 become_zy "xhduoduobaby"
summon wstd:creator -61 21 71 0 0 become_xs "xiaoshu512"
summon wstd:creator -63 21 73 0 0 become_hws "IBukreev"
summon wstd:creator -60 21 70 0 0 become_mdr "Tuffy2020China"
summon wstd:creator -64 21 74 0 0 become_jd "MildTurt"
