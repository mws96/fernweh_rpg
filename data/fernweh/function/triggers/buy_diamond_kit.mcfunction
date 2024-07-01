execute store result score @s fnw.cube_fragment_scratch run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001] 0

scoreboard players set @s fnw.buy_kit_scratch 5
execute if entity @s[scores={fnw.cube_fragments=..49,fnw.cube_fragment_scratch=0,fnw.player_level=50..}] run function fernweh:cubes/kits/failure_cost
scoreboard players set @s fnw.buy_kit_scratch 50
execute if entity @s[scores={fnw.player_level=..49}] run function fernweh:cubes/kits/failure_level
execute if entity @s[scores={fnw.cube_fragment_scratch=5..,fnw.player_level=50..}] run function fernweh:cubes/kits/diamond
execute if entity @s[scores={fnw.cube_fragments=50..,fnw.cube_fragment_scratch=..2,fnw.player_level=50..}] run function fernweh:cubes/kits/diamond

scoreboard players set @s fnw.cube_fragment_scratch 0
scoreboard players set @s fnw.buy_kit_scratch 0

scoreboard players set @s buy_diamond_kit 0
scoreboard players enable @s buy_diamond_kit
