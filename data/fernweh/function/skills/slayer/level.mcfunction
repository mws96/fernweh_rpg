scoreboard players add @s[scores={fnw.slayer_level=..99}] fnw.slayer_level 1

execute at @s[scores={fnw.slayer_level=..99}] run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~

execute if entity @s[scores={fnw.slayer_level=..99}] run title @s actionbar [{"text": "⚔ Slayer Level Up! You are level: ", "bold": true, "color": "gold"}, {"score": {"name": "@s", "objective": "fnw.slayer_level"}, "color": "green"}]

tellraw @a [{"selector": "@s", "color": "blue"}, {"text": " is now ⚔ Slayer Level ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.slayer_level"}, "color": "green"}, {"text": "!", "color": "gray"}]

execute if entity @s[scores={fnw.slayer_level=1}] run advancement grant @s only fernweh:rpg/slayer_lvl_1
execute if entity @s[scores={fnw.slayer_level=10}] run advancement grant @s only fernweh:rpg/slayer_lvl_10
execute if entity @s[scores={fnw.slayer_level=25}] run advancement grant @s only fernweh:rpg/slayer_lvl_25
execute if entity @s[scores={fnw.slayer_level=50}] run advancement grant @s only fernweh:rpg/slayer_lvl_50
execute if entity @s[scores={fnw.slayer_level=75}] run advancement grant @s only fernweh:rpg/slayer_lvl_75
execute if entity @s[scores={fnw.slayer_level=100}] run advancement grant @s only fernweh:rpg/slayer_lvl_100

execute if entity @s[scores={fnw.slayer_level=..99}] run function fernweh:skills/slayer/set_check