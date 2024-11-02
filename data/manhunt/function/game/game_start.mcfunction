# Set game to not frozen
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
gamerule doMobLoot true
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doFireTick true
gamerule fallDamage true
gamerule fireDamage true
gamerule drowningDamage true
gamerule showDeathMessages true
gamerule doVinesSpread true

# Get speedrunner
$tag $(1) add speedrunner

gamemode adventure @a
gamemode survival @a[tag=speedrunner]

clear @a

effect clear @a
effect give @a[tag=!speedrunner] minecraft:slowness 99999 255 true
effect give @a[tag=!speedrunner] minecraft:resistance 99999 255 true

worldborder set 1000000

# Don't allow players to jump
execute as @a[tag=!speedrunner] run attribute @s minecraft:jump_strength base set 0

schedule function manhunt:game/go 5s
say 5