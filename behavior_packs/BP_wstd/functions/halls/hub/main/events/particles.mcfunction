# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 关卡类 ---

## 第1关
execute if score progress.level record matches -1..32 run particle wstd:green 19 8 31
execute if score progress.level record matches -1 run particle wstd:gray 19 8 31
particle wstd:zero 19.7 11.2 31.9
particle wstd:one 19.3 11.2 31.9

## 第2关
execute if score progress.level record matches 1..32 run particle wstd:green 15 8 31
execute if score progress.level record matches -1..0 run particle wstd:gray 15 8 31
particle wstd:zero 15.7 11.2 31.9
execute if score isNetease data matches 0 run particle wstd:two 15.3 11.2 31.9
execute if score isNetease data matches 1 run particle wstd:two_netease 15.3 11.2 31.9

## 第3关
execute if score progress.level record matches 2..32 run particle wstd:green 11 8 31
execute if score progress.level record matches -1..1 run particle wstd:gray 11 8 31
particle wstd:zero 11.7 11.2 31.9
particle wstd:three 11.3 11.2 31.9

## 第4关
execute if score progress.level record matches 3..32 run particle wstd:green 7 8 31
execute if score progress.level record matches -1..2 run particle wstd:gray 7 8 31
particle wstd:zero 7.7 11.2 31.9
particle wstd:four 7.3 11.2 31.9

## 第5关
execute if score progress.level record matches 4..32 run particle wstd:green 3 8 31
execute if score progress.level record matches -1..3 run particle wstd:gray 3 8 31
particle wstd:zero 3.7 11.2 31.9
particle wstd:five 3.3 11.2 31.9

## 第6关
execute if score progress.level record matches 5..32 run particle wstd:green -1 8 31
execute if score progress.level record matches -1..4 run particle wstd:gray -1 8 31
particle wstd:zero -0.3 11.2 31.9
particle wstd:six -0.7 11.2 31.9

## 第7关
execute if score progress.level record matches 6..32 run particle wstd:green -5 8 31
execute if score progress.level record matches -1..5 run particle wstd:gray -5 8 31
particle wstd:zero -4.3 11.2 31.9
particle wstd:seven -4.7 11.2 31.9

## 第8关
execute if score progress.level record matches 7..32 run particle wstd:green -9 8 31
execute if score progress.level record matches -1..6 run particle wstd:gray -9 8 31
particle wstd:zero -8.3 11.2 31.9
particle wstd:eight -8.7 11.2 31.9

## 第9关
execute if score progress.level record matches 8..32 run particle wstd:yellow -13 8 31
execute if score progress.level record matches -1..7 run particle wstd:gray -13 8 31
particle wstd:zero -12.3 11.2 31.9
particle wstd:nine -12.7 11.2 31.9

## 第10关
execute if score progress.level record matches 9..32 run particle wstd:yellow -17 8 31
execute if score progress.level record matches -1..8 run particle wstd:gray -17 8 31
particle wstd:one -16.3 11.2 31.9
particle wstd:zero -16.7 11.2 31.9

## 第11关
execute if score progress.level record matches 10..32 run particle wstd:green -21 8 31
execute if score progress.level record matches -1..9 run particle wstd:gray -21 8 31
particle wstd:one -20.3 11.2 31.9
particle wstd:one -20.7 11.2 31.9

## 第12关
execute if score progress.level record matches 11..32 run particle wstd:yellow -25 8 31
execute if score progress.level record matches -1..10 run particle wstd:gray -25 8 31
particle wstd:one -24.3 11.2 31.9
execute if score isNetease data matches 0 run particle wstd:two -24.7 11.2 31.9
execute if score isNetease data matches 1 run particle wstd:two_netease -25.7 11.2 9.9

## 第13关
execute if score progress.level record matches 12..32 run particle wstd:red -29 8 31
execute if score progress.level record matches -1..11 run particle wstd:gray -29 8 31
particle wstd:one -28.3 11.2 31.9
particle wstd:three -28.7 11.2 31.9

## 第14关 | progress.level为14~30和32时为第13关通过后，显示可进入；其余情况为第13关通过前，显示不可进入
execute if score progress.level record matches 14..30 run particle wstd:yellow -33 8 31
execute if score progress.level record matches 32 run particle wstd:yellow -33 8 31
execute if score progress.level record matches -1..32 unless score progress.level record matches 14..30 unless score progress.level record matches 32 run particle wstd:gray -33 8 31
particle wstd:one -32.3 11.2 31.9
particle wstd:four -32.7 11.2 31.9

## 第15关
execute if score progress.level record matches 14..30 run particle wstd:green -37 8 31
execute if score progress.level record matches -1..32 unless score progress.level record matches 14..30 run particle wstd:gray -37 8 31
particle wstd:one -36.3 11.2 31.9
particle wstd:five -36.7 11.2 31.9

## 第16关
execute if score progress.level record matches 15..30 run particle wstd:green 19 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 15..30 run particle wstd:gray 19 8 23
particle wstd:one 19.3 11.2 23.1
particle wstd:six 19.7 11.2 23.1

## 第17关
execute if score progress.level record matches 16..30 run particle wstd:green 15 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 16..30 run particle wstd:gray 15 8 23
particle wstd:one 15.3 11.2 23.1
particle wstd:seven 15.7 11.2 23.1

## 第18关
execute if score progress.level record matches 17..30 run particle wstd:yellow 11 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 17..30 run particle wstd:gray 11 8 23
particle wstd:one 11.3 11.2 23.1
particle wstd:eight 11.7 11.2 23.1

## 第19关
execute if score progress.level record matches 18..30 run particle wstd:yellow 7 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 18..30 run particle wstd:gray 7 8 23
particle wstd:one 7.3 11.2 23.1
particle wstd:nine 7.7 11.2 23.1

## 第20关
execute if score progress.level record matches 19..30 run particle wstd:red 3 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 19..30 run particle wstd:gray 3 8 23
execute if score isNetease data matches 0 run particle wstd:two 3.3 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease 3.3 11.2 23.1
particle wstd:zero 3.7 11.2 23.1

## 第21关
execute if score progress.level record matches 20..30 run particle wstd:red -1 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 20..30 run particle wstd:gray -1 8 23
execute if score isNetease data matches 0 run particle wstd:two -0.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -0.7 11.2 23.1
particle wstd:one -0.3 11.2 23.1

## 第22关
execute if score progress.level record matches 21..30 run particle wstd:red -5 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 21..30 run particle wstd:gray -5 8 23
execute if score isNetease data matches 0 run particle wstd:two -4.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -4.7 11.2 23.1
execute if score isNetease data matches 0 run particle wstd:two -4.3 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -4.3 11.2 23.1

## 第23关
execute if score progress.level record matches 22..30 run particle wstd:yellow -9 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 22..30 run particle wstd:gray -9 8 23
execute if score isNetease data matches 0 run particle wstd:two -8.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -8.7 11.2 23.1
particle wstd:three -8.3 11.2 23.1

## 第24关
execute if score progress.level record matches 23..30 run particle wstd:yellow -13 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 23..30 run particle wstd:gray -13 8 23
execute if score isNetease data matches 0 run particle wstd:two -12.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -12.7 11.2 23.1
particle wstd:four -12.3 11.2 23.1

## 第25关
execute if score progress.level record matches 24..30 run particle wstd:green -17 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 24..30 run particle wstd:gray -17 8 23
execute if score isNetease data matches 0 run particle wstd:two -16.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -16.7 11.2 23.1
particle wstd:five -16.3 11.2 23.1

## 第26关
execute if score progress.level record matches 25..30 run particle wstd:yellow -21 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 25..30 run particle wstd:gray -21 8 23
execute if score isNetease data matches 0 run particle wstd:two -20.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -20.7 11.2 23.1
particle wstd:six -20.3 11.2 23.1

## 第27关
execute if score progress.level record matches 26..30 run particle wstd:yellow -25 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 26..30 run particle wstd:gray -25 8 23
execute if score isNetease data matches 0 run particle wstd:two -24.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -24.7 11.2 23.1
particle wstd:seven -24.3 11.2 23.1

## 第28关
execute if score progress.level record matches 27..30 run particle wstd:green -29 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 27..30 run particle wstd:gray -29 8 23
execute if score isNetease data matches 0 run particle wstd:two -28.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -28.7 11.2 23.1
particle wstd:eight -28.3 11.2 23.1

## 第29关
execute if score progress.level record matches 28..30 run particle wstd:yellow -33 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 28..30 run particle wstd:gray -33 8 23
execute if score isNetease data matches 0 run particle wstd:two -32.7 11.2 23.1
execute if score isNetease data matches 1 run particle wstd:two_netease -32.7 11.2 23.1
particle wstd:nine -32.3 11.2 23.1

## 第30关
execute if score progress.level record matches 29..30 run particle wstd:red -37 8 23
execute if score progress.level record matches -1..32 unless score progress.level record matches 29..30 run particle wstd:gray -37 8 23
particle wstd:three -36.7 11.2 23.1
particle wstd:zero -36.3 11.2 23.1

## 结束屋隐藏关卡
execute if score progress.mapStage record matches 2 run particle wstd:pink -46 9 35

# --- 大厅传送 ---

## 传送到结束屋
particle wstd:light_blue 21 8 29
## 传送到起始屋
particle wstd:light_blue -39 8 29

# --- 起始屋 ---

## 地图玩法 | 当完成3关后显示
execute if score progress.level record matches 3.. run particle wstd:light_blue 24 8 30

# --- 结束屋 ---

## 播放结束音乐
execute if score progress.mapStage record matches 2 run particle wstd:orange -50 8 30
## 重新播放结束特效
execute if score progress.mapStage record matches 2 run particle wstd:orange -50 8 24
## 重置地图
execute if score progress.mapStage record matches 2 run particle wstd:red -46 8 27
