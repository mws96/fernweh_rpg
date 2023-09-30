tellraw @s [{"text": "Fernweh RPG Skills", "color": "blue", "bold": true, "underlined": true}]
tellraw @s [{"text": "Mining XP: ", "color": "green"}, {"score":{"name": "@s", "objective": "fnw.mining_xp"}, "color": "green"}]

scoreboard players set @s skills 0
scoreboard players enable @s skills