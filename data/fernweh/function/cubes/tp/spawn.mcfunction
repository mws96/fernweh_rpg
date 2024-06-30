# function run after check function

tp @s 578 63 322
tellraw @s [{"text": "Teleporting to spawn. Thanks for the cube! ", "color":"green"}]
scoreboard players remove @s fnw.cube_fragments 10

scoreboard players set @s tp_spawn 0
scoreboard players enable @s tp_spawn