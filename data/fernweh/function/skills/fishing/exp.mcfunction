scoreboard players add @s[scores={fnw.fish_success=1..}] fnw.fish_xp 10

execute if score @s[scores={fnw.fish_level=..99}] fnw.fish_xp >= @s fnw.fish_check run function fernweh:skills/fishing/level

scoreboard players set @s fnw.fish_success 0
