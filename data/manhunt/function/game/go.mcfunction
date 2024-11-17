# manhunt:game/go

# Clear effects from hunters
effect clear @a[tag=!speedrunner]

# Announce game start
title @a[tag=!speedrunner] title {"text":"GO!","color":"gold","bold":true}
tellraw @a[tag=speedrunner] {"text":"The hunters have been released!","color":"red"}

# Play start sound
execute as @a at @s run playsound entity.ender_dragon.growl master @s