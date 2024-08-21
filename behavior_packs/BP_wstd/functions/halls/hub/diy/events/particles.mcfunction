# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 关卡 ---

## 第1关
particle wstd:light_blue -22 8 -6
particle wstd:zero -21.3 11.2 -5.1
particle wstd:one -21.7 11.2 -5.1

## 第2关
particle wstd:light_blue -26 8 -6
particle wstd:zero -25.3 11.2 -5.1
execute if score isNetease data matches 0 run particle wstd:two -25.7 11.2 -5.1
execute if score isNetease data matches 1 run particle wstd:two_netease -25.7 11.2 -5.1

## 第3关
particle wstd:light_blue -30 8 -6
particle wstd:zero -29.3 11.2 -5.1
particle wstd:three -29.7 11.2 -5.1

## 第4关
particle wstd:light_blue -34 8 -6
particle wstd:zero -33.3 11.2 -5.1
particle wstd:four -33.7 11.2 -5.1

## 第5关
particle wstd:light_blue -38 8 -6
particle wstd:zero -37.3 11.2 -5.1
particle wstd:five -37.7 11.2 -5.1

## 第6关
particle wstd:light_blue -22 8 -14
particle wstd:zero -21.7 11.2 -13.9
particle wstd:six -21.3 11.2 -13.9

## 第7关
particle wstd:light_blue -26 8 -14
particle wstd:zero -25.7 11.2 -13.9
particle wstd:seven -25.3 11.2 -13.9

## 第8关
particle wstd:light_blue -30 8 -14
particle wstd:zero -29.7 11.2 -13.9
particle wstd:eight -29.3 11.2 -13.9

## 第9关
particle wstd:light_blue -34 8 -14
particle wstd:zero -33.7 11.2 -13.9
particle wstd:nine -33.3 11.2 -13.9

## 第10关
particle wstd:light_blue -38 8 -14
particle wstd:one -37.7 11.2 -13.9
particle wstd:zero -37.3 11.2 -13.9
