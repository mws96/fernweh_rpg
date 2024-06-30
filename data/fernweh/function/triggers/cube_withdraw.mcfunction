execute if entity @s[scores={fnw.cube_fragments=..9}] run function fernweh:currency/withdraw_failure
execute if entity @s[scores={fnw.cube_fragments=10..}] run function fernweh:currency/withdraw_success

scoreboard players operation @s cube_withdraw -= fnw.1 fnw
scoreboard players enable @s cube_withdraw