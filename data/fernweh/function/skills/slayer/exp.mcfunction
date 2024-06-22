scoreboard players add @s[scores={fnw.slay_zombie=1..}] fnw.slayer_xp 1

execute if score @s[scores={fnw.slayer_level=..99}] fnw.slayer_xp >= @s fnw.slayer_check run function fernweh:skills/slayer/level

scoreboard players set @s fnw.slay_zombie 0