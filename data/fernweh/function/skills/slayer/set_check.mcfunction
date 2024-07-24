scoreboard players operation @s fnw.slayer_check = @s fnw.slayer_level
scoreboard players operation @s fnw.slayer_check += fnw.1 fnw
scoreboard players operation @s fnw.slayer_check *= @s fnw.slayer_check
scoreboard players operation @s fnw.slayer_check *= fnw.10 fnw
scoreboard players operation @s fnw.slayer_scratch = @s fnw.slayer_level
scoreboard players operation @s fnw.slayer_scratch *= @s fnw.slayer_scratch
scoreboard players operation @s fnw.slayer_scratch *= fnw.10 fnw
scoreboard players operation @s fnw.slayer_check += @s fnw.slayer_scratch
scoreboard players set @s fnw.slayer_scratch 0