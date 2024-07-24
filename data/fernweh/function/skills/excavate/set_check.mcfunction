scoreboard players operation @s fnw.excavate_check = @s fnw.excavate_level
scoreboard players operation @s fnw.excavate_check += fnw.1 fnw
scoreboard players operation @s fnw.excavate_check *= @s fnw.excavate_check
scoreboard players operation @s fnw.excavate_check *= fnw.10 fnw
scoreboard players operation @s fnw.excavate_scratch = @s fnw.excavate_level
scoreboard players operation @s fnw.excavate_scratch *= @s fnw.excavate_scratch
scoreboard players operation @s fnw.excavate_scratch *= fnw.10 fnw
scoreboard players operation @s fnw.excavate_check += @s fnw.excavate_scratch
scoreboard players set @s fnw.excavate_scratch 0