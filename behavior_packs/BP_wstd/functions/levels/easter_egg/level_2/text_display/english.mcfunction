# ===== 英文展示文本 =====

# --- 清除展示文本 ---
kill @e[type=wstd:text_display]

# --- 刚开始游戏时 ---

execute if score easterEgg2.totalScore data matches -1 run summon wstd:text_display "§6Next you have to answer 5 questions about Minecraft!" -67 22.0 -25
execute if score easterEgg2.totalScore data matches -1 run summon wstd:text_display "§6Are you ready? awa" -67 21.7 -25
execute if score easterEgg2.totalScore data matches -1 run summon wstd:text_display "§aAye, aye, captain! " -68 22.3 -23
execute if score easterEgg2.totalScore data matches -1 run summon wstd:text_display "§cNO!!! LEAVE ME ALONE!!! " -68 22.3 -27

# --- 第一个问题 ---

execute if score easterEgg2.totalScore data matches 0 run summon wstd:text_display "§61. The Warden's Chinese translation is 循声守卫" -67 21.8 -25
execute if score easterEgg2.totalScore data matches 0 run summon wstd:text_display "§aThat's correct!" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 0 run summon wstd:text_display "§cIt's incorrect!" -68 22.3 -27

# --- 第二个问题 ---

execute if score easterEgg2.totalScore data matches 1 run summon wstd:text_display "§62. In theory, with 7 blocks of copper," -67 21.8 -25
execute if score easterEgg2.totalScore data matches 1 run summon wstd:text_display "§6you can obtain a maximum of 28 cut copper." -67 21.5 -25
execute if score easterEgg2.totalScore data matches 1 run summon wstd:text_display "§aI wholeheartedly agree!" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 1 run summon wstd:text_display "§cHow could that possible?" -68 22.3 -27

# --- 第三个问题 ---

execute if score easterEgg2.totalScore data matches 2 run summon wstd:text_display "§63. Using shears to cut tall grass will not get the item tall grass." -67 21.8 -25
execute if score easterEgg2.totalScore data matches 2 run summon wstd:text_display "§aWell... indeed." -68 22.3 -23
execute if score easterEgg2.totalScore data matches 2 run summon wstd:text_display "§c...lleW FALSE!" -68 22.3 -27

# --- 第四个问题 ---

execute if score easterEgg2.totalScore data matches 3 run summon wstd:text_display "§64. The Wither spawning painting is sized 4*3." -67 21.8 -25
execute if score easterEgg2.totalScore data matches 3 run summon wstd:text_display "§aHow right it is!" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 3 run summon wstd:text_display "§cWhat a wrong description!" -68 22.3 -27

# --- 第五个问题 ---

execute if score easterEgg2.totalScore data matches 4 run summon wstd:text_display "§65. 1.20 is called Trails & Tales" -67 21.8 -25
execute if score easterEgg2.totalScore data matches 4 run summon wstd:text_display "§aヽ(✿ﾟ▽ﾟ)ノ" -68 22.3 -23
execute if score easterEgg2.totalScore data matches 4 run summon wstd:text_display "§cNo, it's Trails & Tails" -68 22.3 -27