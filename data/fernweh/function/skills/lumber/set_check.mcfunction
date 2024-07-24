scoreboard players operation @s fnw.lumber_check = @s fnw.lumber_level
scoreboard players operation @s fnw.lumber_check += fnw.1 fnw
scoreboard players operation @s fnw.lumber_check *= @s fnw.lumber_check
scoreboard players operation @s fnw.lumber_check *= fnw.10 fnw
scoreboard players operation @s fnw.lumber_scratch = @s fnw.lumber_level
scoreboard players operation @s fnw.lumber_scratch *= @s fnw.lumber_scratch
scoreboard players operation @s fnw.lumber_scratch *= fnw.10 fnw
scoreboard players operation @s fnw.lumber_check += @s fnw.lumber_scratch
scoreboard players set @s fnw.lumber_scratch 0