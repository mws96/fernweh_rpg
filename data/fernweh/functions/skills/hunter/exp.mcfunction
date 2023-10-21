scoreboard players add @s[scores={fnw.hunt_grass=1..}] fnw.hunter_xp 1

execute if score @s[scores={fnw.hunter_level=..99}] fnw.hunter_xp >= @s fnw.hunter_check run function fernweh:skills/hunter/level

scoreboard players set @s fnw.hunt_grass 0