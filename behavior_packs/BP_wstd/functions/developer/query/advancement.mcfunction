# ===== 查询函数 =====
# 用于查询进度变量完成情况

# --- 权限等级不足时 ---
execute unless score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.error.oplevel_too_low"}]}

# --- 有权限等级时 ---

## 进度表 | -1 = 锁定 0 = 开放 1 = 解锁
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line1"}]}

## 主线进度
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line2"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line3"},{"translate":" | record.advancement.getStarted = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.getStarted"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line4"},{"translate":" | record.advancement.moreSkilled = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.moreSkilled"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line5"},{"translate":" | record.advancement.halfWay = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.halfWay"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line6"},{"translate":" | record.advancement.theEnd = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.theEnd"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line7"},{"translate":" | record.advancement.anotherWay = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.anotherWay"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line8"},{"translate":" | record.advancement.whyPlaceIronLikeThis = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.whyPlaceIronLikeThis"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line9"},{"translate":" | record.advancement.whiteMobsAnywhere = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.whiteMobsAnywhere"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line10"},{"translate":" | record.advancement.bug = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.bug"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line11"},{"translate":" | record.advancement.luckyGuy = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.luckyGuy"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line12"},{"translate":" | record.advancement.noDolls = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.noDolls"}}]}}]}

## 彩蛋进度
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line13"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line14"},{"translate":" | record.advancement.easterEggFound = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.easterEggFound"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line15"},{"translate":" | record.advancement.yes = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.yes"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line16"},{"translate":" | record.advancement.notAParkour = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.notAParkour"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line17"},{"translate":" | record.advancement.superLike = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.superLike"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line18"},{"translate":" | record.advancement.ironman = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.ironman"}}]}}]}

## 大师进度
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line19"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line20"},{"translate":" | record.advancement.brewingMaster = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.brewingMaster"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line21"},{"translate":" | record.advancement.redstoneMaster = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.redstoneMaster"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line22"},{"translate":" | record.advancement.surviveMaster = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.surviveMaster"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line23"},{"translate":" | record.advancement.emerald = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.emerald"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line24"},{"translate":" | record.advancement.button = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.button"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line25"},{"translate":" | record.advancement.buttonAgain = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.buttonAgain"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line26"},{"translate":" | record.advancement.noMoreButton = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.noMoreButton"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line27"},{"translate":" | record.advancement.soFast = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.soFast"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line28"},{"translate":" | record.advancement.howCanYouSpeedrun = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.howCanYouSpeedrun"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line29"},{"translate":" | record.advancement.theRealEnd = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.theRealEnd"}}]}}]}

## 杂项进度
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line30"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line31"},{"translate":" | record.advancement.letMeSee = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.letMeSee"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line32"},{"translate":" | record.advancement.celebration = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.celebration"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line33"},{"translate":" | record.advancement.who = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.who"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line34"},{"translate":" | record.advancement.diy = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.diy"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.advancement.line35"},{"translate":" | record.advancement.appreciateAndWatch = §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"advancement.appreciateAndWatch"}}]}}]}
