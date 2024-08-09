# ===== 统计变量查询函数 =====
# 用于查询当前各关卡下的统计值，包括提示、跳过、攻略

# --- 权限等级不足时 ---
execute unless score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.error.oplevel_too_low"}]}

# --- 有权限等级时 ---

## 标记提示
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.line1"}]}

## 提示
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.hint"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line1","with":{"rawtext":[{"score":{"objective":"record","name":"hint.level1"}},{"score":{"objective":"record","name":"hint.level2"}},{"score":{"objective":"record","name":"hint.level3"}},{"score":{"objective":"record","name":"hint.level4"}},{"score":{"objective":"record","name":"hint.level5"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line2","with":{"rawtext":[{"score":{"objective":"record","name":"hint.level6"}},{"score":{"objective":"record","name":"hint.level7"}},{"score":{"objective":"record","name":"hint.level8"}},{"score":{"objective":"record","name":"hint.level9"}},{"score":{"objective":"record","name":"hint.level10"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line3","with":{"rawtext":[{"score":{"objective":"record","name":"hint.level11"}},{"score":{"objective":"record","name":"hint.level12"}},{"score":{"objective":"record","name":"hint.level13Part1"}},{"score":{"objective":"record","name":"hint.level14"}},{"score":{"objective":"record","name":"hint.level15"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line4","with":{"rawtext":[{"score":{"objective":"record","name":"hint.level16"}},{"score":{"objective":"record","name":"hint.level17"}},{"score":{"objective":"record","name":"hint.level18"}},{"score":{"objective":"record","name":"hint.level19"}},{"score":{"objective":"record","name":"hint.level23"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line5","with":{"rawtext":[{"score":{"objective":"record","name":"hint.level24"}},{"score":{"objective":"record","name":"hint.level25"}},{"score":{"objective":"record","name":"hint.level26"}},{"score":{"objective":"record","name":"hint.level27"}},{"score":{"objective":"record","name":"hint.level28"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line6","with":{"rawtext":[{"score":{"objective":"record","name":"hint.level29"}}]}}]}

## 攻略
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.strategy"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line1","with":{"rawtext":[{"score":{"objective":"record","name":"strategy.level1"}},{"score":{"objective":"record","name":"strategy.level2"}},{"score":{"objective":"record","name":"strategy.level3"}},{"score":{"objective":"record","name":"strategy.level4"}},{"score":{"objective":"record","name":"strategy.level5"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line2","with":{"rawtext":[{"score":{"objective":"record","name":"strategy.level6"}},{"score":{"objective":"record","name":"strategy.level7"}},{"score":{"objective":"record","name":"strategy.level8"}},{"score":{"objective":"record","name":"strategy.level9"}},{"score":{"objective":"record","name":"strategy.level10"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line3","with":{"rawtext":[{"score":{"objective":"record","name":"strategy.level11"}},{"score":{"objective":"record","name":"strategy.level12"}},{"score":{"objective":"record","name":"strategy.level13Part1"}},{"score":{"objective":"record","name":"strategy.level14"}},{"score":{"objective":"record","name":"strategy.level15"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line4","with":{"rawtext":[{"score":{"objective":"record","name":"strategy.level16"}},{"score":{"objective":"record","name":"strategy.level17"}},{"score":{"objective":"record","name":"strategy.level18"}},{"score":{"objective":"record","name":"strategy.level19"}},{"score":{"objective":"record","name":"strategy.level23"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line5","with":{"rawtext":[{"score":{"objective":"record","name":"strategy.level24"}},{"score":{"objective":"record","name":"strategy.level25"}},{"score":{"objective":"record","name":"strategy.level26"}},{"score":{"objective":"record","name":"strategy.level27"}},{"score":{"objective":"record","name":"strategy.level28"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.general_line6","with":{"rawtext":[{"score":{"objective":"record","name":"strategy.level29"}}]}}]}

## 跳过
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.skip"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.skip_line1","with":{"rawtext":[{"score":{"objective":"record","name":"skip.level13Part1"}},{"score":{"objective":"record","name":"skip.level13Part2"}},{"score":{"objective":"record","name":"skip.level13Part3"}},{"score":{"objective":"record","name":"skip.level20"}},{"score":{"objective":"record","name":"skip.level21"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.stats.succeed.skip_line2","with":{"rawtext":[{"score":{"objective":"record","name":"skip.level22"}},{"score":{"objective":"record","name":"skip.level30"}}]}}]}
