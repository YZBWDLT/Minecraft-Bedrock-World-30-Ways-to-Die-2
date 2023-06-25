# 重置所有设置到默认

# 重置第30关对话为开
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ scoreboard players set @e[name=level30Dialogue] settings 2
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ scoreboard players set @e[name=level30Dialogue] settings 1
# 重置gamerule为锁定
scoreboard players set @e[name=gameruleLocker] settings 1
# 重置地图时间为烟花教程黑夜
scoreboard players set @e[name=mapTime] settings 1
# 重置关卡完成延迟为部分0.50秒
scoreboard players set @e[name=levelCompleteDelay] settings 2
# 重置记分板显示为完整
scoreboard players set @e[name=scoreboardDisplay] settings 2
function system/display_scoreboards/show_information
# 重置速通模式为关闭
scoreboard players set @e[name=speedrunMode] settings 0

# 音效与反馈
scoreboard players set @e[name=soundPlayer] active 3
tellraw @a {"rawtext":[{"translate":"settings.reset_settings"}]} 