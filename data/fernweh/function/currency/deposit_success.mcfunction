execute store result score @s fnw.cube_fragment_scratch run clear @s minecraft:purple_dye[minecraft:custom_model_data=75001]
scoreboard players operation @s fnw.cube_fragment_scratch *= fnw.10 fnw
scoreboard players operation @s fnw.cube_fragments += @s fnw.cube_fragment_scratch
tellraw @s [{"text": "Converted all Cubes in your inventory into ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.cube_fragment_scratch"}, "color": "blue"}, {"text": " Cube Fragments. Your balance is now: ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.cube_fragments"}, "color": "green"}, {"text": " Cube Fragments.", "color": "gray"}]
scoreboard players set @s fnw.cube_fragment_scratch 0