# manhunt:game/countdown_step

# Display countdown number
title @a[tag=!speedrunner] title {"text":"$scoreboard:info ?countdown","color":"red","bold":true}

# Play countdown sound
execute as @a[tag=!speedrunner] at @s run playsound entity.experience_orb.pickup master @s

# Decrement countdown
scoreboard players remove ?countdown info 1

# Continue countdown or start the game
execute if score ?countdown info > 0 constant run schedule function manhunt:game/countdown_step 1s
execute if score ?countdown info <= 0 constant run function manhunt:game/go