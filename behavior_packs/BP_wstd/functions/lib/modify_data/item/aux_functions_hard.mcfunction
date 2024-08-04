# ===== 辅助功能物品供应器 ===
# 用于给予玩家辅助功能物品
#<!> 注意：仅限困难关卡调用

# 调用此方法时：
# · 执行者为玩家
# · 执行位置任意
# 输出结果：
# · 若辅助功能启用，给予对应物品

execute if score skipEnabled settings matches 1 run give @s wstd:skip 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
