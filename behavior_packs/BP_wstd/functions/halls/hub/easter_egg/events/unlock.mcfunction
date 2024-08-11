# ===== 解锁彩蛋关卡 =====

# --- 清除掉彩蛋关卡的按钮 ---
fill 28 10 35 28 11 36 air[] destroy
kill @e[type=item]

# --- 激活彩蛋关卡的进度 ---
scoreboard players set progress.easterEgg record 0

# --- 提示玩家 ---

## 音效
function lib/modify_states/sound/random_levelup_1
## 聊天栏
tellraw @a {"rawtext":[{"translate":"chat.unlocked.easter_egg_levels"}]}

# --- 给予玩家物品 ---
function halls/hub/main/events/item_supplier
