scoreboard players set @s fnw.player_level 0
scoreboard players operation @s fnw.player_level += @s fnw.mining_level
scoreboard players operation @s fnw.player_level += @s fnw.lumber_level
scoreboard players operation @s fnw.player_level += @s fnw.excavate_level
scoreboard players operation @s fnw.player_level += @s fnw.slayer_level
scoreboard players operation @s fnw.player_level += @s fnw.hunter_level
scoreboard players operation @s fnw.player_level += @s fnw.fish_level
scoreboard players operation @s fnw.player_level /= fnw.6 fnw

team join lvl0_9 @s[scores={fnw.player_level=0..9}]
team join lvl10_19 @s[scores={fnw.player_level=10..19}]
team join lvl20_29 @s[scores={fnw.player_level=20..29}]
team join lvl30_39 @s[scores={fnw.player_level=30..39}]
team join lvl40_49 @s[scores={fnw.player_level=40..49}]
team join lvl50_59 @s[scores={fnw.player_level=50..59}]
team join lvl60_69 @s[scores={fnw.player_level=60..69}]
team join lvl70_79 @s[scores={fnw.player_level=70..79}]
team join lvl80_89 @s[scores={fnw.player_level=80..89}]
team join lvl90_99 @s[scores={fnw.player_level=90..99}]
team join lvl100 @s[scores={fnw.player_level=100}]