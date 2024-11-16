# manhunt:load

# Reset game state variables
scoreboard objectives add game dummy
scoreboard objectives add temp dummy
scoreboard players set ?running game 0
scoreboard players set ?countdown game 0

# Clear temporary variables
scoreboard players reset * temp

# Clear data storage
data remove storage manhunt:game preset
data remove storage manhunt:temp *
data remove storage manhunt:selection *

# Revoke advancements
advancement revoke @a everything

# Set gamerules to false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doMobLoot false
gamerule doTileDrops false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule showDeathMessages false
gamerule doVinesSpread false

# Set the time to day
time set day

# Give all players effects to stay alive
effect clear @a
effect give @a resistance infinite 255 true
effect give @a saturation infinite 255 true
effect give @a regeneration infinite 255 true
effect give @a night_vision infinite 255 true
effect give @a water_breathing infinite 255 true
effect give @a minecraft:glowing infinite 255 true

# Setup the world border
worldborder set 40
tag @a remove center
tag @r add center
execute as @a[tag=center] run worldborder center ~ ~
execute as @a[tag=center] run spreadplayers ~ ~ 2 15 false @a[tag=!center]
tag @a remove center

# Set the players' spawnpoints
execute as @a at @s run spawnpoint @s ~ ~ ~

# Allow players to jump
execute as @a run attribute @s jump_strength base set 0.42

function manhunt:presets/open_menu