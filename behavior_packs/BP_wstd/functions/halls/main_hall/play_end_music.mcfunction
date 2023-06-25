## 播放结束音乐
function system/music/play_end
function system/music/queue_maingame
tellraw @a {"rawtext":[{"translate":"chat.play_end_music"}]}
scoreboard players set @e[name=soundPlayer] active 11
tp @a[x=-50,y=9,z=30,r=1] -46 9 30