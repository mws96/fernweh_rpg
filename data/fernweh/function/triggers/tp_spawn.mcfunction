execute if entity @s[scores={fnw.cube_fragments=..9}] run tellraw @s [{"text": "You don't have enough fragments to teleport!", "color":"red"}]
execute if entity @s[scores={fnw.cube_fragments=10..}] run function fernweh:cubes/tp/spawn

scoreboard players set @s tp_spawn 0
scoreboard players enable @s tp_spawn
