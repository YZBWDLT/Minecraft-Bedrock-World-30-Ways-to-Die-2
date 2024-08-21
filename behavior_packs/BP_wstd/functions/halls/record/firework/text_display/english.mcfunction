# ===== 英文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 箱子展示文本 ---

## 配方展示
execute if score fireworkTutorial.step data matches 2..7 run summon wstd:text_display "§6§lCrafting Table Recipe" 14.7 21.2 -27
execute if score fireworkTutorial.step data matches 2..7 run summon wstd:text_display "§6§oOrder Doesn't Matter" 14.7 20.9 -27

## 箱子
execute if score fireworkTutorial.step data matches 2..7 run summon wstd:text_display "§f§lPaper &" 7.3 21.2 -21
execute if score fireworkTutorial.step data matches 2..7 run summon wstd:text_display "§f§lGunpowder" 7.3 20.9 -21

execute if score fireworkTutorial.step data matches 3..7 run summon wstd:text_display "§f§lDye" 7.3 21.2 -23

execute if score fireworkTutorial.step data matches 4..7 run summon wstd:text_display "§f§lPattern" 7.3 21.2 -25
execute if score fireworkTutorial.step data matches 4..7 run summon wstd:text_display "§f§lMaterials" 7.3 20.9 -25

execute if score fireworkTutorial.step data matches 5..7 run summon wstd:text_display "§f§lEffect" 7.3 21.2 -27
execute if score fireworkTutorial.step data matches 5..7 run summon wstd:text_display "§f§lMaterials" 7.3 20.9 -27

# --- 教程正文 ---

## 第1步
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§bHi! Welcome to Fireworks Tutorial!" 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§bHere, you'll learn how to create fireworks" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§band use specific patterns!" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§bGet ready and proceed with §eNext§b! " 10 22.3 -28.9
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§bTip: Go back anytime with §eBack§b!" 10 22.0 -28.9

## 第2步
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§bA firework can be crafted with §epaper§b and §egunpowder§b!" 10 23.8 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§bThis type of basic fireworks §edoesn't have patterns§b." 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§bGive it a try and see the outcome!" 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§bAdd §eextra gunpowder§b for longer flight" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§bduration when crafting fireworks, with a" 10 22.3 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§bmaximum of 3. It can go really high!" 10 22.0 -28.9

## 第3步
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§bYou can §ecolor§b the fireworks!" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§bTo do this, make §efirework stars§b " 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§busing §edyes§b and §egunpowder§b first..." 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§bEach firework star can have §eup to 8 colors§b!!" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§bCombine the §efirework stars§b, §epaper§b, and" 10 22.3 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§b§egunpowder§b to craft the colored firework!" 10 22.0 -28.9

## 第4步
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§bYou can create different §epatterns§b for fireworks!" 10 24.1 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§bUse specific §epattern materials§b while crafting" 10 23.8 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§b§efirework stars§b to achieve §especific shapes§b:" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§aFire Charge: Large Ball | Feather: Burst" 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§aGold Nugget: Star-shaped | Head(Any): Creeper-shaped" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§aNone: Small Ball" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§bBut remember:" 10 22.3 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§c* Different shapes are §eexclusive§c!" 10 22.0 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§c* Adding a pattern material reduces available colors" 10 21.7 -28.9

## 第5步
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§bFireworks can have §especial effects§b!" 10 24.0 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§b Use §egunpowder§b, §edyes§b, and §eeffect materials§b:" 10 23.7 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§aDiamond: Trail (leaves particle trail)" 10 23.4 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§aGlowstone Dust: Twinkle (particles twinkle)" 10 23.1 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§bSpecial effects can coexist with effects and patterns. " 10 22.8 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§cHowever: §eAvoid§c using §etrail§c effects" 10 22.5 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§cfor §econtinuous§c firework launches, as they " 10 22.2 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§cconsume a significant number of particles." 10 21.9 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§c(Don't ask me how I know this, QAQ)" 10 21.6 -28.9

## 第6步
execute if score fireworkTutorial.step data matches 6 run summon wstd:text_display "§bFireworks can have §egradient colors§b after explosion!" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 6 run summon wstd:text_display "§bCombine a firework star and dye to get..." 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 6 run summon wstd:text_display "§ba firework star with §egradient particle colors§b after explosion!" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 6 run summon wstd:text_display "§bAnd it supports §emultiple colors§b. Try it out!" 10 22.6 -28.9

## 第7步
execute if score fireworkTutorial.step data matches 7 run summon wstd:text_display "§bFireworks can use §emultiple§b firework stars!" 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 7 run summon wstd:text_display "§bCombine §etwo or more§b stars with paper and gunpowder." 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 7 run summon wstd:text_display "§bBe cautious of potential dangers and try it out!" 10 22.6 -28.9

## 第8步
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§bFireworks have §eother practical uses§b besides entertainment!" 10 23.8 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§bFireworks with §efirework stars§b cause §eexplosion damage§b!" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§bRegular fireworks without stars don't cause explosion damage..." 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§bFireworks can be loaded on §ecrossbows§b for §esplash damage§b!" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§bThey can also provide §ethrust§b while §eelytra gliding§b!" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§bBe cautious with §efirework star§b fireworks, they cause §eexplosion damage§b..." 10 22.3 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§bThat's it! We also offer preset fireworks~" 10 22.0 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§bHave fun! Click \"Next\" to start again!" 10 21.7 -28.9
