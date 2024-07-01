# fnw.cube_fragment_scratch has number of cubes in player inventory
execute if entity @s[scores={fnw.cube_fragment_scratch=1..}] run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001] 1
execute if entity @s[scores={fnw.cube_fragment_scratch=1..}] run tellraw @s [{"text": "Giving you one Stone Kit for 1 Cube from your inventory...", "color":"blue"}]

execute if entity @s[scores={fnw.cube_fragments=10..,fnw.cube_fragment_scratch=0}] run tellraw @s [{"text": "Giving you one Stone Kit for 10 Cube Fragments...", "color":"blue"}]
execute if entity @s[scores={fnw.cube_fragments=10..,fnw.cube_fragment_scratch=0}] run scoreboard players remove @s fnw.cube_fragments 10
execute if entity @s[scores={fnw.cube_fragment_scratch=0}] run function fernweh:currency/balance

give @s minecraft:chest[custom_name="{\"text\":\"Stone Kit\"}",container=[{slot:0,item:{id:"minecraft:stone_sword",count:1}},{slot:1,item:{id:"minecraft:stone_pickaxe",count:1}},{slot:2,item:{id:"minecraft:stone_axe",count:1}},{slot:3,item:{id:"minecraft:stone_shovel",count:1}},{slot:4,item:{id:"minecraft:stone_hoe",count:1}},{slot:5,item:{id:"minecraft:torch",count:32}}]]