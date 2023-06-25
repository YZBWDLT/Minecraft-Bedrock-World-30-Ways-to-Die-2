# 每1秒释放1次粒子
execute @e[name=ticker,scores={time=0}] ~~~ function halls/difficulty_and_language/particle_settings

## === 非常简单 ===
execute @a[x=-98,y=19,z=49,r=1] ~~~ function settings/difficulty/very_easy
execute @a[x=-98,y=19,z=49,r=1] ~~~ function halls/difficulty_and_language/text_display
execute @a[x=-98,y=19,z=49,r=1] ~~~ tp @s -98 19 46

## === 简单 ===
execute @a[x=-100,y=19,z=49,r=1] ~~~ function settings/difficulty/easy
execute @a[x=-100,y=19,z=49,r=1] ~~~ function halls/difficulty_and_language/text_display
execute @a[x=-100,y=19,z=49,r=1] ~~~ tp @s -100 19 46

## === 普通 ===
execute @a[x=-102,y=19,z=49,r=1] ~~~ function settings/difficulty/normal
execute @a[x=-102,y=19,z=49,r=1] ~~~ function halls/difficulty_and_language/text_display
execute @a[x=-102,y=19,z=49,r=1] ~~~ tp @s -102 19 46

## === 困难 ===
execute @a[x=-104,y=19,z=49,r=1] ~~~ function settings/difficulty/hard
execute @a[x=-104,y=19,z=49,r=1] ~~~ function halls/difficulty_and_language/text_display
execute @a[x=-104,y=19,z=49,r=1] ~~~ tp @s -104 19 46

## === 辅助功能：提示 ===
execute @a[x=-100,y=19,z=43.5,r=1] ~~~ function settings/difficulty/custom_hint
execute @a[x=-100,y=19,z=43.5,r=1] ~~~ function halls/difficulty_and_language/text_display
execute @a[x=-100,y=19,z=43.5,r=1] ~~~ tp @s -100 19 46

## === 辅助功能：攻略 ===
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ function settings/difficulty/custom_strategy
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ function halls/difficulty_and_language/text_display
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ tp @s -102 19 46

## === 辅助功能：跳过 ===
execute @a[x=-104,y=19,z=43.5,r=1] ~~~ function settings/difficulty/custom_skip
execute @a[x=-104,y=19,z=43.5,r=1] ~~~ function halls/difficulty_and_language/text_display
execute @a[x=-104,y=19,z=43.5,r=1] ~~~ tp @s -104 19 46
