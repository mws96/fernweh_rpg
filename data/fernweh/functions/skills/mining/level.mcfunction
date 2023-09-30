scoreboard players add @s[scores={fnw.mining_level=..99}] fnw.mining_level 1

execute at @s[scores={fnw.mining_level=..99}] run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~

execute if entity @s[scores={fnw.mining_level=..99}] run title @s actionbar [{"text": "Mining Level Up! You are level: ", "bold": true, "color": "gold"}, {"score": {"name": "@s", "objective": "fnw.mining_level"}, "color": "green"}]

tellraw @a [{"selector": "@s", "color": "blue"}, {"text": " is now Mining Level ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.mining_level"}, "color": "green"}, {"text": "!", "color": "gray"}]

execute if entity @s[scores={fnw.mining_level=..99}] run function fernweh:skills/mining/set_check