scoreboard players add @s[scores={fnw.chop_acacia=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_birch=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_cherry=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_dark_oak=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_jungle=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_mangrove=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_mangrove_root=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_oak=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_spruce=1..}] fnw.lumber_xp 1
scoreboard players add @s[scores={fnw.chop_bamboo=1..}] fnw.lumber_xp 1

execute if score @s[scores={fnw.lumber_level=..99}] fnw.lumber_xp >= @s fnw.lumber_check run function fernweh:skills/lumber/level

scoreboard players set @s fnw.chop_acacia 0
scoreboard players set @s fnw.chop_birch 0
scoreboard players set @s fnw.chop_cherry 0
scoreboard players set @s fnw.chop_dark_oak 0
scoreboard players set @s fnw.chop_jungle 0
scoreboard players set @s fnw.chop_mangrove 0
scoreboard players set @s fnw.chop_mangrove_root 0
scoreboard players set @s fnw.chop_oak 0
scoreboard players set @s fnw.chop_spruce 0
scoreboard players set @s fnw.chop_bamboo 0