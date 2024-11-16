# manhunt:game/start

# Set game as running
scoreboard players set ?running game 1

# Assign roles based on selections
# Assume roles are stored in storage manhunt:game under players.speedrunners and players.hunters

# Assign speedrunner tag
execute as @a store result score @s temp run data get storage manhunt:game players.speedrunners[]
execute if score @s temp matches 1 run tag @s add speedrunner

# Assign hunter tag
execute as @a store result score @s temp run data get storage manhunt:game players.hunters[]
execute if score @s temp matches 1 run tag @s add hunter

# Clear temp score
scoreboard players reset * temp

# Begin countdown
function manhunt:game/countdown