tellraw @s [{"text": "Your Cube Fragment balance is: ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.cube_fragments"}, "color": "green"}, {"text": ".", "color": "gray"}]

scoreboard players set @s cube_balance 0
scoreboard players enable @s cube_balance