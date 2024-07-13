scoreboard players enable @s skills
scoreboard players enable @s cube_balance
scoreboard players enable @s cube_deposit
scoreboard players enable @s cube_withdraw
scoreboard players enable @s tp_spawn
scoreboard players enable @s tp_minebasealpha
scoreboard players enable @s buy_stone_kit
scoreboard players enable @s buy_iron_kit
scoreboard players enable @s buy_diamond_kit

scoreboard players set @s fnw.mining_xp 0
scoreboard players set @s fnw.mining_level 0
execute as @s run function fernweh:skills/mining/set_check

scoreboard players set @s fnw.lumber_xp 0
scoreboard players set @s fnw.lumber_level 0
execute as @s run function fernweh:skills/lumber/set_check

scoreboard players set @s fnw.excavate_xp 0
scoreboard players set @s fnw.excavate_level 0
execute as @s run function fernweh:skills/excavate/set_check

scoreboard players set @s fnw.slayer_xp 0
scoreboard players set @s fnw.slayer_level 0
execute as @s run function fernweh:skills/slayer/set_check

scoreboard players set @s fnw.hunter_xp 0
scoreboard players set @s fnw.hunter_level 0
execute as @s run function fernweh:skills/hunter/set_check

scoreboard players set @s fnw.fish_xp 0
scoreboard players set @s fnw.fish_level 0
execute as @s run function fernweh:skills/fishing/set_check

function fernweh:skills/set_player_level

scoreboard players set @s fnw.cube_fragments 0
scoreboard players set @s fnw.cube_frag_earn_timer 0
scoreboard players set @s fnw.cube_fragment_scratch 0