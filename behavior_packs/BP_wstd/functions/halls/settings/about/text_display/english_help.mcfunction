# ===== 中文展示文本 =====
# 仅限常见问题

# --- 清除文本展示实体 ---

kill @e[type=wstd:text_display]

# --- 固定内容 ---

## 上一步
summon wstd:text_display "§bPrevious" -100 20.2 49

## 下一步
summon wstd:text_display "§bNext" -106 20.2 49

## 常见问题
summon wstd:text_display "§l===== Q & A =====" -103 22.3 51

# --- 翻页内容 ---

## 1
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§l§bQ1" -103 21.8 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§bFOREWORD" -103 21.5 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§l§aA1" -103 21.0 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§aHere are some questions I could think of that you might encounter. " -103 20.75 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§aI hope they can be helpful to you~" -103 20.50 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§aWell, if none of these questions are what you want to ask," -103 20.25 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§afeel free to ask in the comment!" -103 20.00 51

## 2
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§l§bQ2" -103 21.8 51
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§bWhat if the map difficulty is not what I want to choose?" -103 21.5 51
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§l§aA2" -103 21.0 51
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§aYou can go to the §lSetting Center - Difficulty Settings§r§a to set!" -103 20.75 51
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§aYou can also choose whether to enable hints and other auxiliary functions. " -103 20.50 51
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§a(～￣▽￣)～" -103 20.25 51

## 3
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§l§bQ3" -103 21.8 51
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§bWhy is the map so large? 40-50MB?" -103 21.5 51
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§l§aA3" -103 21.0 51
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§aThis is because the map has many built-in BGMs," -103 20.75 51
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§aand the music takes up most of the space QwQ" -103 20.50 51

## 4
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§l§bQ4" -103 21.8 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§bThe map feels a bit laggy when playing...?" -103 21.5 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§l§aA4" -103 21.0 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§aThere's not much I can do about that... I've tried my best to optimize it," -103 20.75 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§abut a map of this size is indeed prone to lagging. " -103 20.50 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§aIt could also be due to the International or Netease high versions being laggy" -103 20.25 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§alaggy themselves (especially the Render Dragon). So, the solution I offer" -103 20.00 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§a for this issue is: try playing on a different device QwQ" -103 19.75 51

## 5
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§l§bQ5" -103 21.8 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§bHow did you make custom death messages?" -103 21.5 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§l§aA5" -103 21.0 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§aYou can achieve it with a simple tellraw command!" -103 20.75 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§aIf you're interested, you can analyze the map to see it!" -103 20.50 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§a(I recommend doing this after you've finished playing) (～￣▽￣)～" -103 20.25 51

## 6
execute if score settingCenter.help data matches 6 run summon wstd:text_display "§l§bQ6" -103 21.8 51
execute if score settingCenter.help data matches 6 run summon wstd:text_display "§bI chose the Hard difficulty, but now I can't pass the level. What should I do?" -103 21.5 51
execute if score settingCenter.help data matches 6 run summon wstd:text_display "§l§aA6" -103 21.0 51
execute if score settingCenter.help data matches 6 run summon wstd:text_display "§aPlease refer to Q2 awa" -103 20.75 51

## 7
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§l§bQ7" -103 21.8 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§bWhy do I only catch pufferfish when fishing? How did you do that?" -103 21.5 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§l§aA7" -103 21.0 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§aI modified the loot table. Not only that, but the Piglin's has also been changed (awa)." -103 20.75 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§aThis version also adds more loot tables. If you're interested, you can" -103 20.50 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§aanalyze the map's addon on your own to see =w=" -103 20.25 51

## 8
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§l§bQ8" -103 21.8 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§bI've dug all over the map in level 30, " -103 21.5 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§bbut I still don't know how to pass the level..." -103 21.25 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§l§aA8" -103 20.75 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§aYou can check the walkthrough for this version on the @极筑工坊 Bilibili account." -103 20.50 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§aMake sure it's version 2.3!" -103 20.25 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§a(2.4 can also make sense, but 2.2 is indeed outdated)" -103 20.00 51

## 9
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§l§bQ9" -103 21.8 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§bSo, I've completed the map after finishing all 30 levels, right?" -103 21.5 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§l§aA9" -103 21.0 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§aNot quite~ I designed many things in this map, including Easter Egg Levels," -103 20.75 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§aTime Limited Levels, and advancements." -103 20.50 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§aYou only really complete the game once you've finished all 30 advancements!" -103 20.25 51

## 10
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§l§bQ10" -103 21.8 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§bWhere are the Easter Egg Levels?" -103 21.5 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§l§aA10" -103 21.0 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§aSince you found this, I'll give you a more obvious tip..." -103 20.75 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§c§lThere's something fishy about the map in the starting room of the main hall!" -103 20.50 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§aIf you can't find it now, it's not my fault qwq, it's already very noticeable..." -103 20.25 51

## 11
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§l§bQ11" -103 21.8 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§bI want to enable coordinates..." -103 21.5 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§l§aA11" -103 21.0 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§aOf course, you can! But it's a bit complicated. You need to go to §lSetting Center" -103 20.75 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§a§l- Permission Level & Advanced Settings - Gamerule lock settings" -103 20.50 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§ato open it, §cand be careful some bugs may occur due to this change!" -103 20.25 51

## 12
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§l§bQ12" -103 21.8 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§bHow to disable the anti-cheating in this map?" -103 21.5 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§l§aA12" -103 21.0 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§aSince you asked, it means you've already discovered that this map has anti-cheating =w=." -103 20.75 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§aBut don't worry, I've set up a very user-friendly anti-cheating removal solution!" -103 20.50 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§aGo to §lSetting Center - Permission Level Settings and Advanced Settings - Change Permission Level," -103 20.25 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§aand there you go! As long as your permission level is above 1, you can bypass the" -103 20.00 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§aanti-cheating restrictions! if you like analyzing map commands, I recommend making the level to 2" -103 19.75 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§awhich will give you access to many underlying aspects of the map to help you analyze it." -103 19.50 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§c§oWriting a sentence in English is much longer than that in Chinese btw" -103 19.25 51

## 13
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§l§bQ13" -103 21.8 51
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§bCan I play this map in multiplayer?" -103 21.5 51
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§l§aA13" -103 21.0 51
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§aI suggest...don't do it... qwq" -103 20.75 51
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§athe gaming experience might be poor and I tried it... qwq" -103 20.50 51

## 14
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§l§bQ14" -103 21.8 51
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§bThe map is so much fun! Can I recommend it to my friends?" -103 21.5 51
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§l§aA14" -103 21.0 51
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§aSure absolutely! Recording a video is also welcomed too!" -103 20.75 51
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§cBut if you want to repost it, please be sure to inform me to make me aware." -103 20.50 51

## 15
execute if score settingCenter.help data matches 15 run summon wstd:text_display "§l§bQ15" -103 21.8 51
execute if score settingCenter.help data matches 15 run summon wstd:text_display "§bDoes the author have any other maps? Can I try them out?" -103 21.5 51
execute if score settingCenter.help data matches 15 run summon wstd:text_display "§l§aA15" -103 21.0 51
execute if score settingCenter.help data matches 15 run summon wstd:text_display "§aSure! Join the QQ group: 673941729 to experience my latest maps!" -103 20.75 51

## 16
execute if score settingCenter.help data matches 16 run summon wstd:text_display "§l§bQ16" -103 21.8 51
execute if score settingCenter.help data matches 16 run summon wstd:text_display "§bAre you planning to release the map on NetEase?" -103 21.5 51
execute if score settingCenter.help data matches 16 run summon wstd:text_display "§l§aA16" -103 21.0 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§aBy the time you see this, I've already detected through special ways" -103 20.75 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§athat you're using the international version awa." -103 20.50 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§aAs for the China Edition, I've updated this version to support it as well. " -103 20.25 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§aNetEase players should see different content. Indeed, it wasn't easy. " -103 20.00 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§aI moved all commands to function packs to prevent them from being blocked... QAQ" -103 19.75 51
execute if score settingCenter.help data matches 16 run summon wstd:text_display "§c§oHOW DIFFICULT I AM QAQ" -103 19.50 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§c§lWAIT HOW DID YOU DO THAT?!!" -103 20.75 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§c§lYou're using China Edition IN ENGLISH?? HOW???" -103 20.50 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§cThat's incredibly insane... But you should know that I supported Netease toughly..." -103 20.25 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§cSo many words you don't expected will be blocked as you know." -103 20.00 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§cSo I moved all commands to function packs to prevent them from being blocked... QAQ" -103 19.75 51

## 17
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§l§bQ17" -103 21.8 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§bHow can I contact the author?" -103 21.5 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§l§aA17" -103 21.0 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§a[QQ]1543585291 | [QQ Test Group]673941729(Recommended)" -103 20.75 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§a[Bilibili]@一只卑微的量筒 | [Bilibili | Workshop]@极筑工坊" -103 20.50 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§a[China Edition | Workshop]@极筑工坊 | [China Edition]@YZBWDLT, @我是一只小量筒" -103 20.25 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§a[International Version]@YZBWDLT" -103 20.00 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§aSerious inquiries only, please~" -103 19.75 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§aIt's recommended to contact through the QQ test group." -103 19.50 51

## 18
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§l§bQ18" -103 21.8 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§bThere's a bug in the map! I'm stuck QAQ" -103 21.5 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§l§aA18" -103 21.0 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§aIn such situations, be sure to report it in the comments!" -103 20.75 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§aOr join our test group and talk to the author directly~" -103 20.50 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§aWe'll fix the bug as quickly as possible!" -103 20.25 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§a§o(maybe, perhaps, possibly, seemingly, seemingly, perhaps, probably, maybe, we will, =w=)" -103 20.00 51

## 19
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§l§bQ19" -103 21.8 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§bThe map is well-done! I want to analyze the map, where should I start?" -103 21.5 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§l§aA19" -103 21.0 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§aI have to say, for beginners, analyzing this map is not an easy task..." -103 20.75 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§aIf you want to analyze this map, I would give you the following steps:" -103 20.50 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a1. Finish playing the map, then redownload" -103 20.25 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a2. Execute /function settings/oplevel twice in the new map to set the permission level to 2" -103 20.00 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a3. Execute /function settings/developer_mode to enable developer mode" -103 19.75 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a4. Use a text editor (such as VSC) to open the map folder" -103 19.50 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a(if on Android, you can use MT file manager or similar)" -103 19.25 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a5. Start analyzing :)" -103 19.00 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§aGood luck! If you can tackle this challenge, I believe you'll gain a lot!" -103 18.75 51

## 20
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§l§bQ20" -103 21.8 51
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§bI have other questions!" -103 21.5 51
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§l§aA20" -103 21.0 51
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§aAsk in the comments or the QQ group~ " -103 20.75 51
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§aThe author hopes everyone can be more active in the group qwq" -103 20.50 51

## 21
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§l§bQ21" -103 21.8 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§bHave you considered providing download links through other cloud storage services?" -103 21.5 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§l§aA21" -103 21.0 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§aOf course, I have considered it!" -103 20.75 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§aActually, GitHub is a great platform you can use." -103 20.50 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§aYou may not know that visiting GitHub in China is very very very slow" -103 20.25 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§aso many of us don't know how to access GitHub, but luckily, you can!" -103 20.00 51
