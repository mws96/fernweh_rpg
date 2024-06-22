scoreboard players operation @s fnw.fish_check = @s fnw.fish_level
scoreboard players operation @s fnw.fish_check += fnw.1 fnw
scoreboard players operation @s fnw.fish_check *= @s fnw.fish_check
scoreboard players operation @s fnw.fish_check *= fnw.10 fnw
scoreboard players operation @s fnw.fish_scratch = @s fnw.fish_level
scoreboard players operation @s fnw.fish_scratch += fnw.1 fnw
scoreboard players operation @s fnw.fish_scratch *= fnw.10 fnw
scoreboard players operation @s fnw.fish_check += @s fnw.fish_scratch
scoreboard players set @s fnw.fish_scratch 0