# 粒子设定
execute @e[name=ticker,scores={time=0..1}] ~~~ function halls/time_limited_hall/particle_settings

# 关卡进入检测
function halls/time_limited_hall/into_level_tester