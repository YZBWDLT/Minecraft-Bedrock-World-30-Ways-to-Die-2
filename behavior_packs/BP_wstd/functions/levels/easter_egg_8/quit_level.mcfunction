# 调用所有关卡通用退出函数
function levels/all_levels/quit_level

execute @e[name=speedrunMode,scores={settings=0}] ~~~ function system/music/play_maingame

function system/disable_timeline