# function run after check function
# fnw.cube_fragment_scratch has number of cubes in player inventory
execute if entity @s[scores={fnw.cube_fragment_scratch=1..}] run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001] 1
execute if entity @s[scores={fnw.cube_fragment_scratch=1..}] run tellraw @s [{"text": "1 Cube deducted from your inventory. Teleporting to starter village. ", "color":"blue"},{"text":"This may take a moment...", "color":"gray", "italic":true}]

execute if entity @s[scores={fnw.cube_fragments=10..,fnw.cube_fragment_scratch=0}] run tellraw @s [{"text": "10 Cube Fragments deducted from your balance. Teleporting to starter village. ", "color":"blue"},{"text":"This may take a moment...", "color":"gray", "italic":true}]
execute if entity @s[scores={fnw.cube_fragments=10..,fnw.cube_fragment_scratch=0}] run scoreboard players remove @s fnw.cube_fragments 10
execute if entity @s[scores={fnw.cube_fragment_scratch=0}] run function fernweh:currency/balance

tp @s -10 101 -22 -180 0