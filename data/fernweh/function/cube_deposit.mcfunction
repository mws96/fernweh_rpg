execute store result score @s fnw.cube_fragment_scratch run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001] 0

execute if entity @s[scores={fnw.cube_fragment_scratch=0}] run function fernweh:currency/deposit_failure
execute if entity @s[scores={fnw.cube_fragment_scratch=1..}] run function fernweh:currency/deposit_success

scoreboard players set @s fnw.cube_fragment_scratch 0

scoreboard players set @s cube_deposit 0
scoreboard players enable @s cube_deposit