scoreboard players set ?game_running info 0

execute as @a[tag=speedrunner] if score @s death matches 1 run tellraw @a [{"text":"The speedrunner died!","color":"red"}]

execute as @a[tag=speedrunner] if score @s death matches 0 run tellraw @a [{"text":"The speedrunner beat the game!","color":"green"}]
execute as @a[tag=speedrunner] if score @s death matches 0 run function manhunt:end/speedrunner_victory

tellraw @a [{"color":"green","text":"Run "},{"clickEvent":{"action":"run_command","value":"/reload"},"color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to play again!","color":"green"}]},"text":"/reload"},{"color":"green","text":" if you want to play again! "},{"color":"gray","italic":true,"text":"(although it won't reset the world...)"}]