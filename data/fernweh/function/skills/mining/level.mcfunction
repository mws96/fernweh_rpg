scoreboard players add @s[scores={fnw.mining_level=..99}] fnw.mining_level 1

execute at @s[scores={fnw.mining_level=..99}] run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~

execute if entity @s[scores={fnw.mining_level=..99}] run title @s actionbar [{"text": "⛏ Mining Level Up! You are level: ", "bold": true, "color": "gold"}, {"score": {"name": "@s", "objective": "fnw.mining_level"}, "color": "green"}]

tellraw @a [{"selector": "@s", "color": "blue"}, {"text": " is now ⛏ Mining Level ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.mining_level"}, "color": "green"}, {"text": "!", "color": "gray"}]

execute if entity @s[scores={fnw.mining_level=1}] run advancement grant @s only fernweh:rpg/mining_lvl_1
execute if entity @s[scores={fnw.mining_level=10}] run advancement grant @s only fernweh:rpg/mining_lvl_10
execute if entity @s[scores={fnw.mining_level=25}] run advancement grant @s only fernweh:rpg/mining_lvl_25
execute if entity @s[scores={fnw.mining_level=50}] run advancement grant @s only fernweh:rpg/mining_lvl_50
execute if entity @s[scores={fnw.mining_level=75}] run advancement grant @s only fernweh:rpg/mining_lvl_75
execute if entity @s[scores={fnw.mining_level=100}] run advancement grant @s only fernweh:rpg/mining_lvl_100

execute if entity @s[scores={fnw.mining_level=..99}] run function fernweh:skills/mining/set_check

execute if entity @s[scores={fnw.mining_level=..99}] run function fernweh:skills/set_player_level