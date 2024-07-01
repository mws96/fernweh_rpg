scoreboard players add @s[scores={fnw.excavate_level=..99}] fnw.excavate_level 1

execute at @s[scores={fnw.excavate_level=..99}] run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~

execute if entity @s[scores={fnw.excavate_level=..99}] run title @s actionbar [{"text": "♠ Excavate Level Up! You are level: ", "bold": true, "color": "gold"}, {"score": {"name": "@s", "objective": "fnw.excavate_level"}, "color": "green"}]

tellraw @a [{"selector": "@s", "color": "blue"}, {"text": " is now ♠ Excavate Level ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.excavate_level"}, "color": "green"}, {"text": "!", "color": "gray"}]

execute if entity @s[scores={fnw.excavate_level=1}] run advancement grant @s only fernweh:rpg/excavate_lvl_1
execute if entity @s[scores={fnw.excavate_level=10}] run advancement grant @s only fernweh:rpg/excavate_lvl_10
execute if entity @s[scores={fnw.excavate_level=25}] run advancement grant @s only fernweh:rpg/excavate_lvl_25
execute if entity @s[scores={fnw.excavate_level=50}] run advancement grant @s only fernweh:rpg/excavate_lvl_50
execute if entity @s[scores={fnw.excavate_level=75}] run advancement grant @s only fernweh:rpg/excavate_lvl_75
execute if entity @s[scores={fnw.excavate_level=100}] run advancement grant @s only fernweh:rpg/excavate_lvl_100

execute if entity @s[scores={fnw.excavate_level=..99}] run function fernweh:skills/excavate/set_check

execute if entity @s[scores={fnw.excavate_level=..99}] run function fernweh:skills/set_player_level