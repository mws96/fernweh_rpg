# execute if score is ..9 then tell too po' (tp fail)

execute if entity @s[scores={fnw.cube_fragments=..9}] run tellraw @s [{"text": "You don't have enough fragments to teleport! ", "color":"red"}]

scoreboard players set @s tp_spawn 0
scoreboard players enable @s tp_spawn

# execute if score is 10.. then call spawn mcfunction (tp success)

execute if entity @s[scores={fnw.cube_fragments=10..}] run function fernweh:cubes/tp/spawn