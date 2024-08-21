# ===== 关卡结束判定 =====
# 当玩家得到5分后，执行此命令

# --- 提示玩家 ---

## 音效
function lib/modify_states/sound/mob_villager_yes
## 聊天栏
tellraw @a[hasitem={item=wstd:skip,quantity=0}] {"rawtext":[{"translate":"chat.level.time_limited_4.succeed"}]}

# --- 给予玩家跳过 ---

give @a[hasitem={item=wstd:skip,quantity=0}] wstd:skip 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
