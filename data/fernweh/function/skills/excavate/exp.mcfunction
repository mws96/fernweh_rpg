scoreboard players add @s[scores={fnw.dig_grass=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_dirt=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_gravel=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_sand=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_sus_gravel=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_sus_sand=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_red_sand=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_clay=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_coarse_dirt=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_rooted_dirt=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_soul_sand=1..}] fnw.excavate_xp 1
scoreboard players add @s[scores={fnw.dig_soul_soil=1..}] fnw.excavate_xp 1

execute if score @s[scores={fnw.excavate_level=..99}] fnw.excavate_xp >= @s fnw.excavate_check run function fernweh:skills/excavate/level

scoreboard players set @s fnw.dig_grass 0
scoreboard players set @s fnw.dig_dirt 0
scoreboard players set @s fnw.dig_gravel 0
scoreboard players set @s fnw.dig_sand 0
scoreboard players set @s fnw.dig_sus_gravel 0
scoreboard players set @s fnw.dig_sus_sand 0
scoreboard players set @s fnw.dig_red_sand 0
scoreboard players set @s fnw.dig_clay 0
scoreboard players set @s fnw.dig_coarse_dirt 0
scoreboard players set @s fnw.dig_rooted_dirt 0
scoreboard players set @s fnw.dig_soul_sand 0
scoreboard players set @s fnw.dig_soul_soil 0