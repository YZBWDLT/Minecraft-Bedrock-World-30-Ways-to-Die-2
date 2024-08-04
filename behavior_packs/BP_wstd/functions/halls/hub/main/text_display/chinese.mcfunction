# ===== 中文展示文本 =====

# --- 重置展示文本 ---

kill @e[type=wstd:text_display]

# --- 传送到起始屋与结束屋 ---

summon wstd:text_display "§b传送到结束屋" 21 10 29
summon wstd:text_display "§b传送到起始屋" -39 10 29

# --- 结束屋阻挡文本 ---
# 在完成主线前显示
execute if score progress.mapStage record matches 0 run summon wstd:text_display "§cOops..." -38.9 9.2 27
execute if score progress.mapStage record matches 0 run summon wstd:text_display "§6完成所有30个关卡，开启结束屋！" -38.9 8.9 27

# --- 起始屋 ---

## 公告板
summon wstd:text_display "§6§l欢迎来到§c30种死法§62！" 28 12.2 23.1
summon wstd:text_display "§3进入粒子束以开始关卡！" 28 11.6 23.1
summon wstd:text_display "§3右键（手机版长按）物品可以触发对应功能！" 28 11.3 23.1
### 彩蛋位置提示 | 共7行，1~2行为0~14关，3行为15~25关，4行为26~29关，5~6行为主线结束后（分网易版和非网易版）,7行为发现后
execute if score progress.easterEgg record matches -1 if score progress.level record matches 0..14 run summon wstd:text_display "§3大厅里有彩蛋哦~加油找找看吧~" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.level record matches 31..32 run summon wstd:text_display "§3大厅里有彩蛋哦~加油找找看吧~" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.level record matches 15..25 run summon wstd:text_display "§c彩蛋位置提示：就在这个起始屋哦~" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.level record matches 26..29 run summon wstd:text_display "§c彩蛋位置提示：和那个画...哦不，地图有关系哦~" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.mapStage record matches 1..2 if score isNetease data matches 0 run summon wstd:text_display "§c彩蛋位置提示：那个地图是可以穿过去的qwq" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.mapStage record matches 1..2 if score isNetease data matches 1 run summon wstd:text_display "§c彩蛋位置提示：那个地图是可以穿过去的" 28 11.0 23.1
execute if score progress.easterEgg record matches 0..10 run summon wstd:text_display "§3看来你也发现彩蛋啦=w= 完成所有关卡，然后努力完成所有进度吧！" 28 11.0 23.1
execute if score isNetease data matches 0 run summon wstd:text_display "§3在大厅会轮播一些随机提示，其中有一些可能是你未完成进度的突破口哦~" 28 10.7 23.1
execute if score isNetease data matches 1 run summon wstd:text_display "§3在大厅会轮播一些随机提示，其中有一些可能是你未完成进度的关键点哦~" 28 10.7 23.1
summon wstd:text_display "§3感谢岷叔和其他愿意给这个地图录视频的UP主们的支持！" 28 10.4 23.1
summon wstd:text_display "§3如果地图太卡了的话，可以在评论区留言一下你的设备型号，以助我改进地图~" 28 10.1 23.1
summon wstd:text_display "§c请注意这只是游戏，不要在现实世界做类似的事情！！！千万不要那样QAQ" 28 9.8 23.1
summon wstd:text_display "§3就这些啦，祝游戏愉快！ヽ(✿ﾟ▽ﾟ)ノ" 28 9.5 23.1
## 地图
summon wstd:text_display "§l§c30种死法§62 §b2.4 地图" 28 13.0 31.9
## 地图玩法 | 当完成3关后显示
execute if score progress.level record matches 3.. run summon wstd:text_display "§b地图玩法" 24 10 30

# --- 结束屋 ---

## 信标提示 | 在完成主线后，但在完成全进度后停止显示
execute if score progress.mapStage record matches 1 run summon wstd:text_display "§b主线" -47 10 28
execute if score progress.mapStage record matches 1 run summon wstd:text_display "§d彩蛋" -47 10 26
execute if score progress.mapStage record matches 1 run summon wstd:text_display "§e限时" -45 10 28
execute if score progress.mapStage record matches 1 run summon wstd:text_display "§6进度" -45 10 26
## 作者名 | 在完成全进度后显示
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§l§b作者 §r§f| §e一只卑微的量筒" -49.9 9.2 27
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§l§b联合作者 §r§f| §e狂野巴豆" -46 9.2 31.9
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§l§b特别鸣谢 §r§f| §e祉语" -46 9.2 23.1
## 结束屋功能显示 | 在完成全进度后显示
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§6播放结束音乐" -50 10 30
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§6重新播放结束特效" -50 10 24
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§c重置地图" -46 10 27
