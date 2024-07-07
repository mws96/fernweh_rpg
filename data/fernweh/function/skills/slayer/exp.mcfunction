scoreboard players add @s[scores={fnw.slay_blaze=1..}] fnw.slayer_xp 10
scoreboard players add @s[scores={fnw.slay_bogged=1..}] fnw.slayer_xp 6
scoreboard players add @s[scores={fnw.slay_breeze=1..}] fnw.slayer_xp 10
scoreboard players add @s[scores={fnw.slay_cave_spider=1..}] fnw.slayer_xp 4
scoreboard players add @s[scores={fnw.slay_creeper=1..}] fnw.slayer_xp 8
scoreboard players add @s[scores={fnw.slay_drowned=1..}] fnw.slayer_xp 5
scoreboard players add @s[scores={fnw.slay_elder_guardian=1..}] fnw.slayer_xp 45
scoreboard players add @s[scores={fnw.slay_enderman=1..}] fnw.slayer_xp 9
scoreboard players add @s[scores={fnw.slay_endermite=1..}] fnw.slayer_xp 1
execute at @s[scores={fnw.slay_ender_dragon=1..}] run scoreboard players add @a fnw.slayer_xp 500
scoreboard players add @s[scores={fnw.slay_evoker=1..}] fnw.slayer_xp 20
scoreboard players add @s[scores={fnw.slay_ghast=1..}] fnw.slayer_xp 25
scoreboard players add @s[scores={fnw.slay_guardian=1..}] fnw.slayer_xp 15
scoreboard players add @s[scores={fnw.slay_hoglin=1..}] fnw.slayer_xp 10
scoreboard players add @s[scores={fnw.slay_husk=1..}] fnw.slayer_xp 7
scoreboard players add @s[scores={fnw.slay_magma_cube=1..}] fnw.slayer_xp 5
scoreboard players add @s[scores={fnw.slay_phantom=1..}] fnw.slayer_xp 10
scoreboard players add @s[scores={fnw.slay_piglin=1..}] fnw.slayer_xp 12
scoreboard players add @s[scores={fnw.slay_piglin_brute=1..}] fnw.slayer_xp 30
scoreboard players add @s[scores={fnw.slay_pillager=1..}] fnw.slayer_xp 15
scoreboard players add @s[scores={fnw.slay_ravager=1..}] fnw.slayer_xp 80
scoreboard players add @s[scores={fnw.slay_shulker=1..}] fnw.slayer_xp 15
scoreboard players add @s[scores={fnw.slay_silverfish=1..}] fnw.slayer_xp 10
scoreboard players add @s[scores={fnw.slay_skeleton=1..}] fnw.slayer_xp 4
scoreboard players add @s[scores={fnw.slay_slime=1..}] fnw.slayer_xp 4
scoreboard players add @s[scores={fnw.slay_spider=1..}] fnw.slayer_xp 4
scoreboard players add @s[scores={fnw.slay_stray=1..}] fnw.slayer_xp 8
scoreboard players add @s[scores={fnw.slay_vex=1..}] fnw.slayer_xp 35
scoreboard players add @s[scores={fnw.slay_vindicator=1..}] fnw.slayer_xp 20
scoreboard players add @s[scores={fnw.slay_witch=1..}] fnw.slayer_xp 15
scoreboard players add @s[scores={fnw.slay_wither=1..}] fnw.slayer_xp 300
scoreboard players add @s[scores={fnw.slay_wither_skeleton=1..}] fnw.slayer_xp 25
scoreboard players add @s[scores={fnw.slay_warden=1..}] fnw.slayer_xp 300
scoreboard players add @s[scores={fnw.slay_zoglin=1..}] fnw.slayer_xp 15
scoreboard players add @s[scores={fnw.slay_zombie=1..}] fnw.slayer_xp 4
scoreboard players add @s[scores={fnw.slay_zombie_villiager=1..}] fnw.slayer_xp 1
scoreboard players add @s[scores={fnw.slay_zombified_piglin=1..}] fnw.slayer_xp 5

execute if score @s[scores={fnw.slayer_level=..99}] fnw.slayer_xp >= @s fnw.slayer_check run function fernweh:skills/slayer/level

scoreboard players set @s fnw.slay_blaze 0
scoreboard players set @s fnw.slay_bogged 0
scoreboard players set @s fnw.slay_breeze 0
scoreboard players set @s fnw.slay_cave_spider 0
scoreboard players set @s fnw.slay_creeper 0
scoreboard players set @s fnw.slay_drowned 0
scoreboard players set @s fnw.slay_elder_guardian 0
scoreboard players set @s fnw.slay_enderman 0
scoreboard players set @s fnw.slay_endermite 0
scoreboard players set @s fnw.slay_ender_dragon 0
scoreboard players set @s fnw.slay_evoker 0
scoreboard players set @s fnw.slay_ghast 0
scoreboard players set @s fnw.slay_guardian 0
scoreboard players set @s fnw.slay_hoglin 0
scoreboard players set @s fnw.slay_husk 0
scoreboard players set @s fnw.slay_magma_cube 0
scoreboard players set @s fnw.slay_phantom 0
scoreboard players set @s fnw.slay_piglin 0
scoreboard players set @s fnw.slay_piglin_brute 0
scoreboard players set @s fnw.slay_pillager 0
scoreboard players set @s fnw.slay_ravager 0
scoreboard players set @s fnw.slay_shulker 0
scoreboard players set @s fnw.slay_silverfish 0
scoreboard players set @s fnw.slay_skeleton 0
scoreboard players set @s fnw.slay_slime 0
scoreboard players set @s fnw.slay_spider 0
scoreboard players set @s fnw.slay_stray 0
scoreboard players set @s fnw.slay_vex 0
scoreboard players set @s fnw.slay_vindicator 0
scoreboard players set @s fnw.slay_witch 0
scoreboard players set @s fnw.slay_wither 0
scoreboard players set @s fnw.slay_wither_skeleton 0
scoreboard players set @s fnw.slay_warden 0
scoreboard players set @s fnw.slay_zoglin 0
scoreboard players set @s fnw.slay_zombie 0
scoreboard players set @s fnw.slay_zombie_villiager 0
scoreboard players set @s fnw.slay_zombified_piglin 0