# ===== 退出关卡 =====

# --- 通用 ---

## 开启大厅
function halls/hub/main/start

# --- 特殊内容 ---

## 设置进度性数据 | 开启进度检测
scoreboard players set progress.advancement record 0

## 提示玩家游戏开始
tellraw @a {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.open.end.line1"},{"translate":"chat.open.end.line2"}]}}]}

## 播放音效
function lib/modify_states/sound/random_levelup_2

## 开启起始屋的门
fill 22 9 28 23 12 26 air[] destroy
kill @e[type=item]

## 开放起始屋的彩蛋和结束屋的隐藏按钮
fill 29 10 33 27 12 33 wstd:fake_quartz_pillar
fill -47 10 33 -45 12 33 wstd:fake_quartz_pillar
