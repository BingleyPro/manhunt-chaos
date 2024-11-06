gamemode survival @a

effect clear @a[tag=!speedrunner]
execute as @a[tag=!speedrunner] run attribute @s minecraft:jump_strength base set 0.42

title @a[tag=!speedrunner] title {"color":"gold","text":"GO!"}
tellraw @a[tag=speedrunner] {"color":"red","text":"The hunters have been released!"}
execute as @a at @s run playsound minecraft:entity.dragon_fireball.explode master @s

scoreboard players set * death 0
scoreboard players set ?game_running info 1