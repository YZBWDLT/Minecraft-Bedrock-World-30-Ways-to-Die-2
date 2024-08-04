# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 难度设置 ---

## 非常简单
execute as @a[x=-98,y=19,z=49,r=1] run function halls/settings/diff_and_lang/functions/diff_very_easy
## 简单
execute as @a[x=-100,y=19,z=49,r=1] run function halls/settings/diff_and_lang/functions/diff_easy
## 普通
execute as @a[x=-102,y=19,z=49,r=1] run function halls/settings/diff_and_lang/functions/diff_normal
## 困难
execute as @a[x=-104,y=19,z=49,r=1] run function halls/settings/diff_and_lang/functions/diff_hard

# --- 提示、攻略、跳过单项设置 ---

## 提示
execute as @a[x=-100,y=19,z=43.5,r=1] run function halls/settings/diff_and_lang/functions/hint
## 攻略
execute as @a[x=-102,y=19,z=43.5,r=1] run function halls/settings/diff_and_lang/functions/strategy
## 跳过
execute as @a[x=-104,y=19,z=43.5,r=1] run function halls/settings/diff_and_lang/functions/skip

# --- 语言设定 ---

## 中文
execute as @a[x=-108,y=19,z=49,r=1] run function halls/settings/diff_and_lang/functions/lang_chinese
## English
execute as @a[x=-108,y=19,z=43.5,r=1] run function halls/settings/diff_and_lang/functions/lang_english
