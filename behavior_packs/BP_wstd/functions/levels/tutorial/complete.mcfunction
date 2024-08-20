# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/dialogue/disable

# --- 特殊内容 ---

## 清除展示文本
kill @e[type=wstd:text_display]

# --- 下一关 ---

## 传送玩家到下一关
function halls/open/stage_3/start
