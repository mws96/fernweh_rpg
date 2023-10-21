scoreboard players operation @s fnw.hunter_check = @s fnw.hunter_level
scoreboard players operation @s fnw.hunter_check += fnw.1 fnw
scoreboard players operation @s fnw.hunter_check *= @s fnw.hunter_check
scoreboard players operation @s fnw.hunter_check *= fnw.10 fnw
scoreboard players operation @s fnw.hunter_scratch = @s fnw.hunter_level
scoreboard players operation @s fnw.hunter_scratch += fnw.1 fnw
scoreboard players operation @s fnw.hunter_scratch *= fnw.10 fnw
scoreboard players operation @s fnw.hunter_check += @s fnw.hunter_scratch
scoreboard players set @s fnw.hunter_scratch 0