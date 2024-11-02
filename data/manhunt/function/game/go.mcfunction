gamemode survival @a

effect clear @a[tag=!speedrunner]
execute as @a[tag=!speedrunner] run attribute @s minecraft:jump_strength base set 0.42
say GO

scoreboard players set * death 0
scoreboard players set ?game_running info 1