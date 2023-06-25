kill @e[type=wstd:text_display]

## 自定义关卡文本提示
summon wstd:text_display "§b§l欢迎来到自定义关卡！" -24 10.6 -10
summon wstd:text_display "§b在这里自定义属于你的关卡，玩你自己的关卡！" -24 10.3 -10
summon wstd:text_display "§b我们也预设了几个远古版本死法2的关卡，祝游戏愉快~" -24 10.0 -10
summon wstd:text_display "§b使用下一步以在编辑模式和游戏模式间切换" -24 9.7 -10
execute @e[name=diyEditMode,scores={backend=0}] ~~~ summon wstd:text_display "§c当前：游戏模式" -24 9.4 -10
execute @e[name=diyEditMode,scores={backend=1}] ~~~ summon wstd:text_display "§c当前：编辑模式" -24 9.4 -10