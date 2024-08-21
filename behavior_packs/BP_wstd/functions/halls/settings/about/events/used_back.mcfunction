# ===== 玩家使用返回物品 =====

## 当玩家不处于如何游玩的动画，也不处于常见问题中时
execute if score timeline active matches 6 run function halls/settings/about/quit

## 当玩家处于如何游玩的动画时，且是从大厅进来的，那么回到大厅
execute if score timeline active matches 1 if score settingCenter.enteredFromMainhall data matches 1 run function halls/settings/about/quit_to_hall

## 当玩家处于如何游玩的动画时，且是从设置中心进来的，那么回到上一级
execute if score timeline active matches 1 run function halls/settings/about/start_general

## 当玩家处于常见问题中时，回到上一级
execute if score timeline active matches 7 run function halls/settings/about/start_general
