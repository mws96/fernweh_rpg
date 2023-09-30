tellraw @s [{"text": "Fernweh RPG Skills", "color": "blue", "bold": true, "underlined": true}]
tellraw @s [{"text": "Mining: Level ", "color": "green"}, {"score":{"name": "@s", "objective": "fnw.mining_level"}, "color": "green"}, {"text": ", XP (", "color": "green"}, {"score":{"name": "@s", "objective": "fnw.mining_xp"}, "color": "green"}, {"text": "/", "color": "green"}, {"score":{"name": "@s", "objective": "fnw.mining_check"}, "color": "green"}, {"text": ")", "color": "green"}]

scoreboard players set @s skills 0
scoreboard players enable @s skills