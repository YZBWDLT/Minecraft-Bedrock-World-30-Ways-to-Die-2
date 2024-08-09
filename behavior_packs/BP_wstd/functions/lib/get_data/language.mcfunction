# ===== 获取玩家使用的语言 =====
# 用于检测玩家使用的语言为中文/英文。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 若为中文，输出data.language=0；若为英文，输出data.language=1。

# --- 召唤检测用物品 ---
loot spawn 0 10 0 loot "items/language_test"

# --- 检测物品名称 ---

## 若为[语言测试]，则正在使用中文
execute if entity @e[name="语言测试",x=0,y=10,z=0,r=5,type=item] run scoreboard players set language data 0

## 若为[Language Test]，则正在使用英文
execute if entity @e[name="Language Test",x=0,y=10,z=0,r=5,type=item] run scoreboard players set language data 1

# --- 清除检测物品 ---

kill @e[name="语言测试",x=0,y=10,z=0,r=5,type=item]
kill @e[name="Language Test",x=0,y=10,z=0,r=5,type=item]
