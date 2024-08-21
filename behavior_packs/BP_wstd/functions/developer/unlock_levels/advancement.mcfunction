# ===== 解锁所有关卡 =====
# 解锁彩蛋关卡

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

# --- 开启开发者模式时 ---

## 若关卡已解锁，则报错并播放音效
execute if score developerMode settings matches 1 if score progress.advancement record matches 30 run tellraw @a {"rawtext":[{"translate":"functions.developer.unlock_levels.advancement.fail"}]}
execute if score developerMode settings matches 1 if score progress.advancement record matches 30 run function lib/modify_states/sound/mob_villager_no

## 若关卡未解锁，则解锁并播放音效
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 run tellraw @a {"rawtext":[{"translate":"functions.developer.unlock_levels.advancement.succeed"}]}
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 run function lib/modify_states/sound/mob_villager_yes
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.getStarted record matches 1 run function advancements/mainline/get_started
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.moreSkilled record matches 1 run function advancements/mainline/more_skilled
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.halfWay record matches 1 run function advancements/mainline/half_way
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.theEnd record matches 1 run function advancements/mainline/the_end
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.anotherWay record matches 1 run function advancements/mainline/another_way
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.whyPlaceIronLikeThis record matches 1 run function advancements/mainline/why_place_iron_like_this
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.whiteMobsAnywhere record matches 1 run function advancements/mainline/white_mobs_anywhere
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.bug record matches 1 run function advancements/mainline/bug
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.luckyGuy record matches 1 run function advancements/mainline/lucky_guy
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.noDolls record matches 1 run function advancements/mainline/no_dolls
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.easterEggFound record matches 1 run function advancements/easter_egg/easter_egg_found
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.yes record matches 1 run function advancements/easter_egg/yes
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.notAParkour record matches 1 run function advancements/easter_egg/not_a_parkour
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.superLike record matches 1 run function advancements/easter_egg/super_like
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.ironman record matches 1 run function advancements/easter_egg/ironman
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.brewingMaster record matches 1 run function advancements/master/brewing_master
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.redstoneMaster record matches 1 run function advancements/master/redstone_master
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.surviveMaster record matches 1 run function advancements/master/survive_master
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.emerald record matches 1 run function advancements/master/emerald
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.button record matches 1 run function advancements/master/button
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.buttonAgain record matches 1 run function advancements/master/button_again
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.noMoreButton record matches 1 run function advancements/master/no_more_button
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.soFast record matches 1 run function advancements/master/so_fast
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.howCanYouSpeedrun record matches 1 run function advancements/master/how_can_you_speedrun
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.theRealEnd record matches 1 run function advancements/master/the_real_end
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.letMeSee record matches 1 run function advancements/miscellaneous/let_me_see
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.celebration record matches 1 run function advancements/miscellaneous/celebration
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.who record matches 1 run function advancements/miscellaneous/who
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.diy record matches 1 run function advancements/miscellaneous/diy
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 unless score advancement.appreciateAndWatch record matches 1 run function advancements/miscellaneous/appreciate_and_watch
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 run scoreboard players set progress.advancement record 30
execute if score developerMode settings matches 1 unless score progress.advancement record matches 30 run function lib/scoreboard/advancement
