# ===== TRIGGERS =====
scoreboard objectives add skills trigger
scoreboard objectives add cube_balance trigger
scoreboard objectives add cube_deposit trigger
scoreboard objectives add cube_withdraw trigger
scoreboard objectives add tp_spawn trigger
scoreboard objectives add tp_minebasealpha trigger
scoreboard objectives add buy_stone_kit trigger
scoreboard objectives add buy_iron_kit trigger
scoreboard objectives add buy_diamond_kit trigger

# ===== MISC =====
scoreboard objectives add fnw dummy
scoreboard players set fnw.1 fnw 1
scoreboard players set fnw.6 fnw 6
scoreboard players set fnw.10 fnw 10

# ===== MINING =====
# Player Level
scoreboard objectives add fnw.player_level dummy
scoreboard objectives setdisplay below_name fnw.player_level
scoreboard objectives setdisplay list fnw.player_level
scoreboard objectives modify fnw.player_level displayname {"text": "Player Lvl"}
team add lvl0_9 {"text": "Level 0 - 9"}
team modify lvl0_9 color green
team add lvl10_19 {"text": "Level 10 - 19"}
team modify lvl10_19 color dark_green
team add lvl20_29 {"text": "Level 20 - 29"}
team modify lvl20_29 color dark_aqua
team add lvl30_39 {"text": "Level 30 - 39"}
team modify lvl30_39 color dark_blue
team add lvl40_49 {"text": "Level 40 - 49"}
team modify lvl40_49 color blue
team add lvl50_59 {"text": "Level 50 - 59"}
team modify lvl50_59 color aqua
team add lvl60_69 {"text": "Level 60 - 69"}
team modify lvl60_69 color yellow
team add lvl70_79 {"text": "Level 70 - 79"}
team modify lvl70_79 color gold
team add lvl80_89 {"text": "Level 80 - 89"}
team modify lvl80_89 color red
team add lvl90_99 {"text": "Level 90 - 99"}
team modify lvl90_99 color dark_purple
team add lvl100 {"text": "Level 100"}
team modify lvl100 color light_purple

# Mining Leveling
scoreboard objectives add fnw.mining_xp dummy
scoreboard objectives add fnw.mining_level dummy
scoreboard objectives add fnw.mining_check dummy
scoreboard objectives add fnw.mining_scratch dummy

# Mining XP
scoreboard objectives add fnw.break_stone minecraft.mined:minecraft.stone
scoreboard objectives add fnw.break_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add fnw.break_andesite minecraft.mined:minecraft.andesite
scoreboard objectives add fnw.break_granite minecraft.mined:minecraft.granite
scoreboard objectives add fnw.break_deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add fnw.break_tuff minecraft.mined:minecraft.tuff
scoreboard objectives add fnw.break_calcite minecraft.mined:minecraft.calcite
scoreboard objectives add fnw.break_smooth_basalt minecraft.mined:minecraft.smooth_basalt
scoreboard objectives add fnw.break_terracotta minecraft.mined:minecraft.terracotta
scoreboard objectives add fnw.break_brown_terracotta minecraft.mined:minecraft.brown_terracotta
scoreboard objectives add fnw.break_light_gray_terracotta minecraft.mined:minecraft.light_gray_terracotta
scoreboard objectives add fnw.break_orange_terracotta minecraft.mined:minecraft.orange_terracotta
scoreboard objectives add fnw.break_red_terracotta minecraft.mined:minecraft.red_terracotta
scoreboard objectives add fnw.break_white_terracotta minecraft.mined:minecraft.white_terracotta
scoreboard objectives add fnw.break_yellow_terracotta minecraft.mined:minecraft.yellow_terracotta
scoreboard objectives add fnw.break_sandstone minecraft.mined:minecraft.sandstone
scoreboard objectives add fnw.break_netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add fnw.break_blackstone minecraft.mined:minecraft.blackstone
scoreboard objectives add fnw.break_basalt minecraft.mined:minecraft.basalt
scoreboard objectives add fnw.break_end_stone minecraft.mined:minecraft.end_stone
scoreboard objectives add fnw.break_magma_block minecraft.mined:minecraft.magma_block
scoreboard objectives add fnw.break_dripstone minecraft.mined:minecraft.pointed_dripstone
scoreboard objectives add fnw.break_nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add fnw.break_coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add fnw.break_deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add fnw.break_copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add fnw.break_deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add fnw.break_iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add fnw.break_deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add fnw.break_amethyst minecraft.mined:minecraft.amethyst_cluster
scoreboard objectives add fnw.break_gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add fnw.break_deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add fnw.break_nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add fnw.break_redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add fnw.break_deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add fnw.break_lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add fnw.break_deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add fnw.break_emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add fnw.break_deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add fnw.break_diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add fnw.break_deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore

# ===== LUMBER =====
# Lumber Leveling
scoreboard objectives add fnw.lumber_xp dummy
scoreboard objectives add fnw.lumber_level dummy
scoreboard objectives add fnw.lumber_check dummy
scoreboard objectives add fnw.lumber_scratch dummy

# Lumber XP
scoreboard objectives add fnw.chop_acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add fnw.chop_birch minecraft.mined:minecraft.birch_log
scoreboard objectives add fnw.chop_cherry minecraft.mined:minecraft.cherry_log
scoreboard objectives add fnw.chop_dark_oak minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add fnw.chop_jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add fnw.chop_mangrove minecraft.mined:minecraft.mangrove_log
scoreboard objectives add fnw.chop_mangrove_root minecraft.mined:minecraft.mangrove_roots
scoreboard objectives add fnw.chop_oak minecraft.mined:minecraft.oak_log
scoreboard objectives add fnw.chop_spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add fnw.chop_bamboo minecraft.mined:minecraft.bamboo

# ===== EXCAVATE =====
# Excavate Leveling
scoreboard objectives add fnw.excavate_xp dummy
scoreboard objectives add fnw.excavate_level dummy
scoreboard objectives add fnw.excavate_check dummy
scoreboard objectives add fnw.excavate_scratch dummy

# Excavate XP
scoreboard objectives add fnw.dig_grass minecraft.mined:minecraft.grass_block
scoreboard objectives add fnw.dig_dirt minecraft.mined:minecraft.dirt
scoreboard objectives add fnw.dig_gravel minecraft.mined:minecraft.gravel
scoreboard objectives add fnw.dig_sand minecraft.mined:minecraft.sand
scoreboard objectives add fnw.dig_sus_gravel minecraft.mined:minecraft.suspicious_gravel
scoreboard objectives add fnw.dig_sus_sand minecraft.mined:minecraft.suspicious_sand
scoreboard objectives add fnw.dig_red_sand minecraft.mined:minecraft.red_sand
scoreboard objectives add fnw.dig_clay minecraft.mined:minecraft.clay
scoreboard objectives add fnw.dig_coarse_dirt minecraft.mined:minecraft.coarse_dirt
scoreboard objectives add fnw.dig_rooted_dirt minecraft.mined:minecraft.rooted_dirt
scoreboard objectives add fnw.dig_soul_sand minecraft.mined:minecraft.soul_sand
scoreboard objectives add fnw.dig_soul_soil minecraft.mined:minecraft.soul_soil

# ===== SLAYER =====
# Slayer Leveling
scoreboard objectives add fnw.slayer_xp dummy
scoreboard objectives add fnw.slayer_level dummy
scoreboard objectives add fnw.slayer_check dummy
scoreboard objectives add fnw.slayer_scratch dummy

# Slayer XP
scoreboard objectives add fnw.slay_blaze minecraft.killed:minecraft.blaze
scoreboard objectives add fnw.slay_bogged minecraft.killed:minecraft.bogged
scoreboard objectives add fnw.slay_breeze minecraft.killed:minecraft.breeze
scoreboard objectives add fnw.slay_cave_spider minecraft.killed:minecraft.cave_spider
scoreboard objectives add fnw.slay_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add fnw.slay_drowned minecraft.killed:minecraft.drowned
scoreboard objectives add fnw.slay_elder_guardian minecraft.killed:minecraft.elder_guardian
scoreboard objectives add fnw.slay_enderman minecraft.killed:minecraft.enderman
scoreboard objectives add fnw.slay_endermite minecraft.killed:minecraft.endermite
scoreboard objectives add fnw.slay_ender_dragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add fnw.slay_evoker minecraft.killed:minecraft.evoker
scoreboard objectives add fnw.slay_ghast minecraft.killed:minecraft.ghast
scoreboard objectives add fnw.slay_guardian minecraft.killed:minecraft.guardian
scoreboard objectives add fnw.slay_hoglin minecraft.killed:minecraft.hoglin
scoreboard objectives add fnw.slay_husk minecraft.killed:minecraft.husk
scoreboard objectives add fnw.slay_magma_cube minecraft.killed:minecraft.magma_cube
scoreboard objectives add fnw.slay_phantom minecraft.killed:minecraft.phantom
scoreboard objectives add fnw.slay_piglin minecraft.killed:minecraft.piglin
scoreboard objectives add fnw.slay_piglin_brute minecraft.killed:minecraft.piglin_brute
scoreboard objectives add fnw.slay_pillager minecraft.killed:minecraft.pillager
scoreboard objectives add fnw.slay_ravager minecraft.killed:minecraft.ravager
scoreboard objectives add fnw.slay_shulker minecraft.killed:minecraft.shulker
scoreboard objectives add fnw.slay_silverfish minecraft.killed:minecraft.silverfish
scoreboard objectives add fnw.slay_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add fnw.slay_slime minecraft.killed:minecraft.slime
scoreboard objectives add fnw.slay_spider minecraft.killed:minecraft.spider
scoreboard objectives add fnw.slay_stray minecraft.killed:minecraft.stray
scoreboard objectives add fnw.slay_vex minecraft.killed:minecraft.vex
scoreboard objectives add fnw.slay_vindicator minecraft.killed:minecraft.vindicator
scoreboard objectives add fnw.slay_witch minecraft.killed:minecraft.witch
scoreboard objectives add fnw.slay_wither minecraft.killed:minecraft.wither
scoreboard objectives add fnw.slay_wither_skeleton minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add fnw.slay_warden minecraft.killed:minecraft.warden
scoreboard objectives add fnw.slay_zoglin minecraft.killed:minecraft.zoglin
scoreboard objectives add fnw.slay_zombie minecraft.killed:minecraft.zombie
scoreboard objectives add fnw.slay_zombie_villiager minecraft.killed:minecraft.zombie_villager
scoreboard objectives add fnw.slay_zombified_piglin minecraft.killed:minecraft.zombified_piglin

# ===== HUNTER =====
# Hunter Leveling
scoreboard objectives add fnw.hunter_xp dummy
scoreboard objectives add fnw.hunter_level dummy
scoreboard objectives add fnw.hunter_check dummy
scoreboard objectives add fnw.hunter_scratch dummy

# Hunter XP
scoreboard objectives add fnw.hunt_allay minecraft.killed:minecraft.allay
scoreboard objectives add fnw.hunt_axolotl minecraft.killed:minecraft.axolotl
scoreboard objectives add fnw.hunt_bat minecraft.killed:minecraft.bat
scoreboard objectives add fnw.hunt_bee minecraft.killed:minecraft.bee
scoreboard objectives add fnw.hunt_camel minecraft.killed:minecraft.camel
scoreboard objectives add fnw.hunt_cat minecraft.killed:minecraft.cat
scoreboard objectives add fnw.hunt_chicken minecraft.killed:minecraft.chicken
scoreboard objectives add fnw.hunt_cod minecraft.killed:minecraft.cod
scoreboard objectives add fnw.hunt_cow minecraft.killed:minecraft.cow
scoreboard objectives add fnw.hunt_donkey minecraft.killed:minecraft.donkey
scoreboard objectives add fnw.hunt_fox minecraft.killed:minecraft.fox
scoreboard objectives add fnw.hunt_frog minecraft.killed:minecraft.frog
scoreboard objectives add fnw.hunt_glow_squid minecraft.killed:minecraft.glow_squid
scoreboard objectives add fnw.hunt_horse minecraft.killed:minecraft.horse
scoreboard objectives add fnw.hunt_iron_golem minecraft.killed:minecraft.iron_golem
scoreboard objectives add fnw.hunt_llama minecraft.killed:minecraft.llama
scoreboard objectives add fnw.hunt_mooshroom minecraft.killed:minecraft.mooshroom
scoreboard objectives add fnw.hunt_mule minecraft.killed:minecraft.mule
scoreboard objectives add fnw.hunt_ocelot minecraft.killed:minecraft.ocelot
scoreboard objectives add fnw.hunt_parrot minecraft.killed:minecraft.parrot
scoreboard objectives add fnw.hunt_pig minecraft.killed:minecraft.pig
scoreboard objectives add fnw.hunt_polar_bear minecraft.killed:minecraft.polar_bear
scoreboard objectives add fnw.hunt_pufferfish minecraft.killed:minecraft.pufferfish
scoreboard objectives add fnw.hunt_rabbit minecraft.killed:minecraft.rabbit
scoreboard objectives add fnw.hunt_salmon minecraft.killed:minecraft.salmon
scoreboard objectives add fnw.hunt_sheep minecraft.killed:minecraft.sheep
scoreboard objectives add fnw.hunt_skeleton_horse minecraft.killed:minecraft.skeleton_horse
scoreboard objectives add fnw.hunt_snow_golem minecraft.killed:minecraft.snow_golem
scoreboard objectives add fnw.hunt_squid minecraft.killed:minecraft.squid
scoreboard objectives add fnw.hunt_strider minecraft.killed:minecraft.strider
scoreboard objectives add fnw.hunt_tadpole minecraft.killed:minecraft.tadpole
scoreboard objectives add fnw.hunt_trader_llama minecraft.killed:minecraft.trader_llama
scoreboard objectives add fnw.hunt_tropical_fish minecraft.killed:minecraft.tropical_fish
scoreboard objectives add fnw.hunt_turtle minecraft.killed:minecraft.turtle
scoreboard objectives add fnw.hunt_villager minecraft.killed:minecraft.villager
scoreboard objectives add fnw.hunt_wandering_trader minecraft.killed:minecraft.wandering_trader

# ===== FISHING =====
# Fishing Leveling
scoreboard objectives add fnw.fish_xp dummy
scoreboard objectives add fnw.fish_level dummy
scoreboard objectives add fnw.fish_check dummy
scoreboard objectives add fnw.fish_scratch dummy

# Fishing XP
scoreboard objectives add fnw.fish_success minecraft.custom:fish_caught

# ===== CURRENCY EARNING =====
scoreboard objectives add fnw.cube_fragments dummy
scoreboard objectives add fnw.cube_frag_earn_timer minecraft.custom:play_time
scoreboard objectives add fnw.cube_fragment_scratch dummy

# ==== KITS =====
scoreboard objectives add fnw.buy_kit_scratch dummy