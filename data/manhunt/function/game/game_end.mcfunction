scoreboard players set ?game_running info 0

execute as @a[tag=speedrunner] if score @s death matches 1 run tellraw @a [{"text":"The speedrunner died!","color":"red"}]

execute as @a[tag=speedrunner] if score @s death matches 0 run tellraw @a [{"text":"The speedrunner beat the game!","color":"green"}]

schedule function manhunt:load 10s