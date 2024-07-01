# fnw.cube_fragment_scratch has number of cubes in player inventory
execute if entity @s[scores={fnw.cube_fragment_scratch=5..}] run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001] 5
execute if entity @s[scores={fnw.cube_fragment_scratch=5..}] run tellraw @s [{"text": "Giving you one Stone Kit for 5 Cubes from your inventory...", "color":"blue"}]

execute if entity @s[scores={fnw.cube_fragments=50..,fnw.cube_fragment_scratch=0}] run tellraw @s [{"text": "Giving you one Diamond Kit for 50 Cube Fragments...", "color":"blue"}]
execute if entity @s[scores={fnw.cube_fragments=50..,fnw.cube_fragment_scratch=0}] run scoreboard players remove @s fnw.cube_fragments 50
execute if entity @s[scores={fnw.cube_fragment_scratch=0}] run function fernweh:currency/balance

give @s minecraft:chest[custom_name="{\"text\":\"Diamond Kit\", \"color\":\"aqua\"}",container=[{slot:0,item:{id:"minecraft:diamond_sword",count:1}},{slot:1,item:{id:"minecraft:diamond_pickaxe",count:1}},{slot:2,item:{id:"minecraft:diamond_axe",count:1}},{slot:3,item:{id:"minecraft:diamond_shovel",count:1}},{slot:4,item:{id:"minecraft:diamond_hoe",count:1}},{slot:5,item:{id:"minecraft:torch",count:64}}]]