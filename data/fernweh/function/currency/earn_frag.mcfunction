# 7200 ticks == 6 minutes
scoreboard players add @s[scores={fnw.cube_frag_earn_timer=7200..}] fnw.cube_fragments 1
scoreboard players set @s fnw.cube_frag_earn_timer 0
tellraw @s [{"text": "You have earned 1 Cube Fragment! You now have: ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.cube_fragments"}, "color": "green"}, {"text": " fragments.", "color": "gray"}]