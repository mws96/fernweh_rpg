scoreboard players operation @s fnw.mining_check = @s fnw.mining_level
scoreboard players operation @s fnw.mining_check += fnw.1 fnw
scoreboard players operation @s fnw.mining_check *= @s fnw.mining_check
scoreboard players operation @s fnw.mining_check *= fnw.10 fnw
scoreboard players operation @s fnw.mining_scratch = @s fnw.mining_level
scoreboard players operation @s fnw.mining_scratch += fnw.1 fnw
scoreboard players operation @s fnw.mining_scratch *= fnw.10 fnw
scoreboard players operation @s fnw.mining_check += @s fnw.mining_scratch
scoreboard players set @s fnw.mining_scratch 0