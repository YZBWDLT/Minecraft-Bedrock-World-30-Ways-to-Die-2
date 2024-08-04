# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 关卡 ---

## 第1关
execute if score progress.easterEgg record matches -1..10 run particle wstd:pink -22 8 9
execute if score progress.easterEgg record matches -1 run particle wstd:gray -22 8 9
particle wstd:zero -21.3 11.2 9.9
particle wstd:one -21.7 11.2 9.9

## 第2关
execute if score progress.easterEgg record matches 1..10 run particle wstd:pink -26 8 9
execute if score progress.easterEgg record matches -1..0 run particle wstd:gray -26 8 9
particle wstd:zero -25.3 11.2 9.9
execute if score isNetease data matches 0 run particle wstd:two -25.7 11.2 9.9
execute if score isNetease data matches 1 run particle wstd:two_netease -25.7 11.2 9.9

## 第3关
execute if score progress.easterEgg record matches 2..10 run particle wstd:pink -30 8 9
execute if score progress.easterEgg record matches -1..1 run particle wstd:gray -30 8 9
particle wstd:zero -29.3 11.2 9.9
particle wstd:three -29.7 11.2 9.9

## 第4关
execute if score progress.easterEgg record matches 3..10 run particle wstd:pink -34 8 9
execute if score progress.easterEgg record matches -1..2 run particle wstd:gray -34 8 9
particle wstd:zero -33.3 11.2 9.9
particle wstd:four -33.7 11.2 9.9

## 第5关
execute if score progress.easterEgg record matches 4..10 run particle wstd:pink -38 8 9
execute if score progress.easterEgg record matches -1..3 run particle wstd:gray -38 8 9
particle wstd:zero -37.3 11.2 9.9
particle wstd:five -37.7 11.2 9.9

## 第6关
execute if score progress.easterEgg record matches 5..10 run particle wstd:pink -22 8 1
execute if score progress.easterEgg record matches -1..4 run particle wstd:gray -22 8 1
particle wstd:zero -21.7 11.2 1.1
particle wstd:six -21.3 11.2 1.1

## 第7关
execute if score progress.easterEgg record matches 6..10 run particle wstd:pink -26 8 1
execute if score progress.easterEgg record matches -1..5 run particle wstd:gray -26 8 1
particle wstd:zero -25.7 11.2 1.1
particle wstd:seven -25.3 11.2 1.1

## 第8关
execute if score progress.easterEgg record matches 7..10 run particle wstd:pink -30 8 1
execute if score progress.easterEgg record matches -1..6 run particle wstd:gray -30 8 1
particle wstd:zero -29.7 11.2 1.1
particle wstd:eight -29.3 11.2 1.1

## 第9关
execute if score progress.easterEgg record matches 8..10 run particle wstd:pink -34 8 1
execute if score progress.easterEgg record matches -1..7 run particle wstd:gray -34 8 1
particle wstd:zero -33.7 11.2 1.1
particle wstd:nine -33.3 11.2 1.1

## 第10关
execute if score progress.easterEgg record matches 9..10 run particle wstd:pink -38 8 1
execute if score progress.easterEgg record matches -1..8 run particle wstd:gray -38 8 1
particle wstd:one -37.7 11.2 1.1
particle wstd:zero -37.3 11.2 1.1

## 隐藏关卡
particle wstd:pink -38 8 12
