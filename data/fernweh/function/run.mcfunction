# ===== TRIGGERS =====
execute if entity @s[scores={skills=1..}] run function fernweh:triggers/skills
execute if entity @s[scores={cube_balance=1..}] run function fernweh:triggers/cube_balance
execute if entity @s[scores={cube_deposit=1..}] run function fernweh:triggers/cube_deposit
execute if entity @s[scores={cube_withdraw=1..}] run function fernweh:triggers/cube_withdraw
execute if entity @s[scores={tp_spawn=1..}] run function fernweh:triggers/tp_spawn

# ===== MINING =====
execute if entity @s[scores={fnw.break_stone=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_diorite=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_andesite=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_granite=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_tuff=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_calcite=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_smooth_basalt=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_terracotta=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_brown_terracotta=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_light_gray_terracotta=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_orange_terracotta=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_red_terracotta=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_white_terracotta=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_yellow_terracotta=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_sandstone=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_netherrack=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_blackstone=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_basalt=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_end_stone=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_magma_block=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_dripstone=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_nether_quartz_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_coal_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate_coal_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_copper_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate_copper_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_iron_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate_iron_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_amethyst=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_gold_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate_gold_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_nether_gold_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_redstone_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate_redstone_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_lapis_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate_lapis_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_emerald_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate_emerald_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_diamond_ore=1..}] run function fernweh:skills/mining/exp
execute if entity @s[scores={fnw.break_deepslate_diamond_ore=1..}] run function fernweh:skills/mining/exp

# ===== LUMBER =====
execute if entity @s[scores={fnw.chop_acacia=1..}] run function fernweh:skills/lumber/exp
execute if entity @s[scores={fnw.chop_birch=1..}] run function fernweh:skills/lumber/exp
execute if entity @s[scores={fnw.chop_cherry=1..}] run function fernweh:skills/lumber/exp
execute if entity @s[scores={fnw.chop_dark_oak=1..}] run function fernweh:skills/lumber/exp
execute if entity @s[scores={fnw.chop_jungle=1..}] run function fernweh:skills/lumber/exp
execute if entity @s[scores={fnw.chop_mangrove=1..}] run function fernweh:skills/lumber/exp
execute if entity @s[scores={fnw.chop_mangrove_roots=1..}] run function fernweh:skills/lumber/exp
execute if entity @s[scores={fnw.chop_oak=1..}] run function fernweh:skills/lumber/exp
execute if entity @s[scores={fnw.chop_spruce=1..}] run function fernweh:skills/lumber/exp

# ===== EXCAVATE =====
execute if entity @s[scores={fnw.dig_grass=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_dirt=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_gravel=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_sand=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_sus_gravel=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_sus_sand=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_red_sand=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_clay=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_coarse_dirt=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_rooted_dirt=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_soul_sand=1..}] run function fernweh:skills/excavate/exp
execute if entity @s[scores={fnw.dig_soul_soil=1..}] run function fernweh:skills/excavate/exp

# ===== SLAYER =====
execute if entity @s[scores={fnw.slay_blaze=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_bogged=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_breeze=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_cave_spider=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_creeper=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_drowned=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_elder_guardian=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_enderman=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_endermite=1..}] run function fernweh:skills/slayer/exp
execute if entity @a[distance=..50, scores={fnw.slay_ender_dragon=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_evoker=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_ghast=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_guardian=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_hoglin=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_husk=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_magma_cube=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_phantom=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_piglin=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_piglin_brute=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_pillager=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_ravager=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_shulker=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_silverfish=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_skeleton=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_slime=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_spider=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_stray=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_vex=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_vindicator=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_witch=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_wither=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_wither_skeleton=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_warden=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_zoglin=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_zombie=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_zombie_villiager=1..}] run function fernweh:skills/slayer/exp
execute if entity @s[scores={fnw.slay_zombified_piglin=1..}] run function fernweh:skills/slayer/exp

# ===== HUNTER =====
execute if entity @s[scores={fnw.hunt_allay=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_axolotl=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_bat=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_bee=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_camel=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_cat=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_chicken=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_cod=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_cow=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_donkey=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_fox=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_frog=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_glow_squid=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_horse=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_iron_golem=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_llama=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_mooshroom=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_mule=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_ocelot=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_parrot=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_pig=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_polar_bear=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_pufferfish=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_rabbit=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_salmon=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_sheep=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_skeleton_horse=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_snow_golem=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_squid=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_strider=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_tadpole=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_trader_llama=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_tropical_fish=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_turtle=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_villager=1..}] run function fernweh:skills/hunter/exp
execute if entity @s[scores={fnw.hunt_wandering_trader=1..}] run function fernweh:skills/hunter/exp

# ===== FISHING =====
execute if entity @s[scores={fnw.fish_success=1..}] run loot give @s loot fernweh:gameplay/fishing
execute if entity @s[scores={fnw.fish_success=1..}] run function fernweh:skills/fishing/exp

# ===== CURRENCY EARNING =====
# 7200 ticks == 6 minutes
execute if entity @s[scores={fnw.cube_frag_earn_timer=7200..}] run function fernweh:currency/earn_frag