# ===== 使用物品时 =====
# 当玩家使用物品“播放音乐”时触发

# --- 使用情况不在预期内时 ---

# --- 使用情况在预期内时 ---

# --- 对于一切可能的情况，都执行的内容 ---

## 调用音乐播放库
function lib/function_lists/music

## 聊天栏与音效提示
tellraw @a {"rawtext":[{"translate":"functions.entities.player.using_play_music"}]}
function lib/modify_states/sound/mob_villager_yes
