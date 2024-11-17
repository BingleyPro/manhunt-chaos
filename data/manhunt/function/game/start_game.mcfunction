# manhunt:game/start_game

# Set game as running
scoreboard players set ?game_running info 1

# Assign roles based on selections
# Assume the speedrunner is stored in storage manhunt:game under preset.options
data modify storage manhunt:game speedrunner set from storage manhunt:game preset.options[{name:"Speedrunner"}].selected

# Tag the speedrunner
execute as @a[name="$storage:manhunt:game speedrunner"] run tag @s add speedrunner

# Prepare players
gamemode adventure @a
gamemode survival @a[tag=speedrunner]
clear @a
effect clear @a

# Apply initial effects
effect give @a[tag=!speedrunner] minecraft:slowness 99999 255 true
effect give @a[tag=!speedrunner] minecraft:resistance 99999 255 true

# Start the countdown
schedule function manhunt:game/countdown_start 1s
scoreboard players set ?countdown info 5
scoreboard players set ?game_time game 0