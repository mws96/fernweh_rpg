execute store result score @s fnw.cube_fragment_scratch run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001] 0

scoreboard players set @s fnw.buy_kit_scratch 3
execute if entity @s[scores={fnw.cube_fragments=..29,fnw.cube_fragment_scratch=..2,fnw.player_level=25..}] run function fernweh:cubes/kits/failure_cost
scoreboard players set @s fnw.buy_kit_scratch 25
execute if entity @s[scores={fnw.player_level=..24}] run function fernweh:cubes/kits/failure_level
execute if entity @s[scores={fnw.cube_fragment_scratch=3..,fnw.player_level=25..}] run function fernweh:cubes/kits/iron
execute if entity @s[scores={fnw.cube_fragments=30..,fnw.cube_fragment_scratch=..2,fnw.player_level=25..}] run function fernweh:cubes/kits/iron

scoreboard players set @s fnw.cube_fragment_scratch 0
scoreboard players set @s fnw.buy_kit_scratch 0

scoreboard players set @s buy_iron_kit 0
scoreboard players enable @s buy_iron_kit
