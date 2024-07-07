execute store result score @s fnw.cube_fragment_scratch run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001] 0

execute if entity @s[scores={fnw.cube_fragments=..9,fnw.cube_fragment_scratch=0}] run tellraw @s [{"text": "You cannot afford to teleport to Mine Base Alpha! ", "color":"red"},{"text": "Cost: 1 Cube or 10 Cube Fragments.", "color":"gray"}]
execute if entity @s[scores={fnw.cube_fragment_scratch=1..}] run function fernweh:cubes/tp/minebasealpha
execute if entity @s[scores={fnw.cube_fragments=10..,fnw.cube_fragment_scratch=0}] run function fernweh:cubes/tp/minebasealpha

scoreboard players set @s fnw.cube_fragment_scratch 0

scoreboard players set @s tp_minebasealpha 0
scoreboard players enable @s tp_minebasealpha
