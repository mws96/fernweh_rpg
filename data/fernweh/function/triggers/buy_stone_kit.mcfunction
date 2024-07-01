execute store result score @s fnw.cube_fragment_scratch run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001] 0

scoreboard players set @s fnw.buy_kit_scratch 1
execute if entity @s[scores={fnw.cube_fragments=..9,fnw.cube_fragment_scratch=0}] run function fernweh:cubes/kits/failure_cost
execute if entity @s[scores={fnw.cube_fragment_scratch=1..}] run function fernweh:cubes/kits/stone
execute if entity @s[scores={fnw.cube_fragments=10..,fnw.cube_fragment_scratch=0}] run function fernweh:cubes/kits/stone

scoreboard players set @s fnw.cube_fragment_scratch 0
scoreboard players set @s fnw.buy_kit_scratch 0

scoreboard players set @s buy_stone_kit 0
scoreboard players enable @s buy_stone_kit
