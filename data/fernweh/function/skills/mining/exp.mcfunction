scoreboard players add @s[scores={fnw.break_stone=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_diorite=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_andesite=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_granite=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_deepslate=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_tuff=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_calcite=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_smooth_basalt=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_terracotta=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_brown_terracotta=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_light_gray_terracotta=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_orange_terracotta=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_red_terracotta=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_white_terracotta=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_yellow_terracotta=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_sandstone=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_netherrack=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_blackstone=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_basalt=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_end_stone=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_magma_block=1..}] fnw.mining_xp 1
scoreboard players add @s[scores={fnw.break_dripstone=1..}] fnw.mining_xp 1

scoreboard players add @s[scores={fnw.break_nether_quartz_ore=1..}] fnw.mining_xp 2

scoreboard players add @s[scores={fnw.break_coal_ore=1..}] fnw.mining_xp 3
scoreboard players add @s[scores={fnw.break_deepslate_coal_ore=1..}] fnw.mining_xp 3

scoreboard players add @s[scores={fnw.break_copper_ore=1..}] fnw.mining_xp 4
scoreboard players add @s[scores={fnw.break_deepslate_copper_ore=1..}] fnw.mining_xp 4

scoreboard players add @s[scores={fnw.break_iron_ore=1..}] fnw.mining_xp 5
scoreboard players add @s[scores={fnw.break_deepslate_iron_ore=1..}] fnw.mining_xp 5

scoreboard players add @s[scores={fnw.break_amethyst=1..}] fnw.mining_xp 6

scoreboard players add @s[scores={fnw.break_gold_ore=1..}] fnw.mining_xp 7
scoreboard players add @s[scores={fnw.break_deepslate_gold_ore=1..}] fnw.mining_xp 7
scoreboard players add @s[scores={fnw.break_nether_gold_ore=1..}] fnw.mining_xp 7

scoreboard players add @s[scores={fnw.break_redstone_ore=1..}] fnw.mining_xp 8
scoreboard players add @s[scores={fnw.break_deepslate_redstone_ore=1..}] fnw.mining_xp 8

scoreboard players add @s[scores={fnw.break_lapis_ore=1..}] fnw.mining_xp 9
scoreboard players add @s[scores={fnw.break_deepslate_lapis_ore=1..}] fnw.mining_xp 9

scoreboard players add @s[scores={fnw.break_emerald_ore=1..}] fnw.mining_xp 10
scoreboard players add @s[scores={fnw.break_deepslate_emerald_ore=1..}] fnw.mining_xp 10

scoreboard players add @s[scores={fnw.break_diamond_ore=1..}] fnw.mining_xp 11
scoreboard players add @s[scores={fnw.break_deepslate_diamond_ore=1..}] fnw.mining_xp 11

execute if score @s[scores={fnw.mining_level=..99}] fnw.mining_xp >= @s fnw.mining_check run function fernweh:skills/mining/level

scoreboard players set @s fnw.break_stone 0
scoreboard players set @s fnw.break_diorite 0
scoreboard players set @s fnw.break_andesite 0
scoreboard players set @s fnw.break_granite 0
scoreboard players set @s fnw.break_deepslate 0
scoreboard players set @s fnw.break_tuff 0
scoreboard players set @s fnw.break_calcite 0
scoreboard players set @s fnw.break_smooth_basalt 0
scoreboard players set @s fnw.break_terracotta 0
scoreboard players set @s fnw.break_brown_terracotta 0
scoreboard players set @s fnw.break_light_gray_terracotta 0
scoreboard players set @s fnw.break_orange_terracotta 0
scoreboard players set @s fnw.break_red_terracotta 0
scoreboard players set @s fnw.break_white_terracotta 0
scoreboard players set @s fnw.break_yellow_terracotta 0
scoreboard players set @s fnw.break_sandstone 0
scoreboard players set @s fnw.break_netherrack 0
scoreboard players set @s fnw.break_blackstone 0
scoreboard players set @s fnw.break_basalt 0
scoreboard players set @s fnw.break_end_stone 0
scoreboard players set @s fnw.break_magma_block 0
scoreboard players set @s fnw.break_dripstone 0
scoreboard players set @s fnw.break_nether_quartz_ore 0
scoreboard players set @s fnw.break_coal_ore 0
scoreboard players set @s fnw.break_deepslate_coal_ore 0
scoreboard players set @s fnw.break_copper_ore 0
scoreboard players set @s fnw.break_deepslate_copper_ore 0
scoreboard players set @s fnw.break_iron_ore 0
scoreboard players set @s fnw.break_deepslate_iron_ore 0
scoreboard players set @s fnw.break_amethyst 0
scoreboard players set @s fnw.break_gold_ore 0
scoreboard players set @s fnw.break_deepslate_gold_ore 0
scoreboard players set @s fnw.break_nether_gold_ore 0
scoreboard players set @s fnw.break_redstone_ore 0
scoreboard players set @s fnw.break_deepslate_redstone_ore 0
scoreboard players set @s fnw.break_lapis_ore 0
scoreboard players set @s fnw.break_deepslate_lapis_ore 0
scoreboard players set @s fnw.break_emerald_ore 0
scoreboard players set @s fnw.break_deepslate_emerald_ore 0
scoreboard players set @s fnw.break_diamond_ore 0
scoreboard players set @s fnw.break_deepslate_diamond_ore 0