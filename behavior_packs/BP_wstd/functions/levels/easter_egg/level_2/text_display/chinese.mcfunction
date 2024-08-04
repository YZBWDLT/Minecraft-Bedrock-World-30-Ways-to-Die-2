# ===== 中文展示文本 =====

# --- 清除展示文本 ---
kill @e[type=wstd:text_display]

# --- 刚开始游戏时 ---

execute if score easterEgg2.totalScore data matches -1 run summon wstd:text_display "§6接下来你要回答5个关于MC的问题！" -67 22.0 -25
execute if score easterEgg2.totalScore data matches -1 run summon wstd:text_display "§6准备好了吗？awa" -67 21.7 -25
execute if score easterEgg2.totalScore data matches -1 run summon wstd:text_display "§aAye, aye, captain! " -68 22.3 -23
execute if score easterEgg2.totalScore data matches -1 run summon wstd:text_display "§cNO!!! LEAVE ME ALONE!!! " -68 22.3 -27

# --- 第一个问题 ---

execute if score easterEgg2.totalScore data matches 0 run summon wstd:text_display "§61. Warden 的标准中文译名是循声守卫" -67 21.8 -25
execute if score easterEgg2.totalScore data matches 0 run summon wstd:text_display "§a太对了哥！" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 0 run summon wstd:text_display "§c别扯了，根本不是" -68 22.3 -27

# --- 第二个问题 ---

execute if score easterEgg2.totalScore data matches 1 run summon wstd:text_display "§62. 理论上，7个铜块最多可以得到28个切制铜块" -67 21.8 -25
execute if score easterEgg2.totalScore data matches 1 run summon wstd:text_display "§a我举双手赞同" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 1 run summon wstd:text_display "§c开玩笑，怎么可能？" -68 22.3 -27

# --- 第三个问题 ---

execute if score easterEgg2.totalScore data matches 2 run summon wstd:text_display "§63. 用剪刀剪高草丛无法获得高草丛这个物品" -67 21.8 -25
execute if score easterEgg2.totalScore data matches 2 run summon wstd:text_display "§a有一说一，确实" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 2 run summon wstd:text_display "§c有二说二，不对" -68 22.3 -27

# --- 第四个问题 ---

execute if score easterEgg2.totalScore data matches 3 run summon wstd:text_display "§64. 画有凋灵生成方法的画的画幅大小是4*3" -67 21.8 -25
execute if score easterEgg2.totalScore data matches 3 run summon wstd:text_display "§a一瞅就得对" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 3 run summon wstd:text_display "§c一看就得废" -68 22.3 -27

# --- 第五个问题 ---

execute if score easterEgg2.totalScore data matches 4 run summon wstd:text_display "§65. 1.20的更新主题是足迹与故事" -67 21.8 -25
execute if score easterEgg2.totalScore data matches 4 run summon wstd:text_display "§aヽ(✿ﾟ▽ﾟ)ノ" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 4 run summon wstd:text_display "§c戳啦，是足迹与尾巴" -68 22.3 -27
