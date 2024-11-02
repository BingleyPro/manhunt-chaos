# Set game to frozen
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doTileDrops false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule showDeathMessages false
gamerule doVinesSpread false

gamemode adventure @a

clear @a

effect clear @a
effect give @a minecraft:resistance 99999 255 true
effect give @a minecraft:saturation 99999 255 true
effect give @a minecraft:regeneration 99999 255 true

worldborder set 40
tag @a remove center
tag @r add center
execute at @a[tag=center] run worldborder center ~ ~
execute at @a[tag=center] run spreadplayers ~ ~ 2 15 false @a[tag=!center]
tag @a remove center

function manhunt:setup/choose_preset_pg1