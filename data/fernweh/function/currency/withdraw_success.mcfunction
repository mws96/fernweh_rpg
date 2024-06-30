function fernweh:currency/give_cube
scoreboard players operation @s fnw.cube_fragments -= fnw.10 fnw
tellraw @s [{"text": "Withdrew 1 Cube (10 Fragments) from your account. Your balance is now: ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.cube_fragments"}, "color": "green"}, {"text": " Cube Fragments.", "color": "gray"}]
