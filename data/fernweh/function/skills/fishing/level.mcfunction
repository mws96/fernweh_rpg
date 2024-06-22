scoreboard players add @s[scores={fnw.fish_level=..99}] fnw.fish_level 1

execute at @s[scores={fnw.fish_level=..99}] run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~

execute if entity @s[scores={fnw.fish_level=..99}] run title @s actionbar [{"text": "🎣 Fishing Level Up! You are level: ", "bold": true, "color": "gold"}, {"score": {"name": "@s", "objective": "fnw.fish_level"}, "color": "green"}]

tellraw @a [{"selector": "@s", "color": "blue"}, {"text": " is now 🎣 Fishing Level ", "color": "gray"}, {"score": {"name": "@s", "objective": "fnw.fish_level"}, "color": "green"}, {"text": "!", "color": "gray"}]

execute if entity @s[scores={fnw.fish_level=..99}] run function fernweh:skills/fish/set_check