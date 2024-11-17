# manhunt:events/run/condition/run_player_health_condition

# Get the target's health
$execute store result score ?health temp run data get entity $(target) Health 1

# Setup a scoreboard value of the health check
scoreboard players set ?compare temp 0
$scoreboard players add ?comapre temp $(health)

# Check the type of check - greater than
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].testfor
execute store success score ?result temp run data modify storage manhunt:comparison result set value "greater_than"

$execute store result score ?value temp run data get storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].value
$execute store result score ?value2 temp run data get entity $(target) Health 1

# Check if the health is greater than the value
execute if score ?result temp matches 0 if score ?health temp > ?value2 temp run scoreboard players set ?checks temp 1

# Check the type of check - greater than or equal to
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].testfor
execute store success score ?result temp run data modify storage manhunt:comparison result set value "greater_than_equal_to"

$execute store result score ?value temp run data get storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].value
$execute store result score ?value2 temp run data get entity $(target) Health 1

# Check if the health is greater than or equal to the value
execute if score ?result temp matches 0 if score ?health temp >= ?value2 temp run scoreboard players set ?checks temp 1

# Check the type of check - equal to
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].testfor
execute store success score ?result temp run data modify storage manhunt:comparison result set value "equal_to"

$execute store result score ?value temp run data get storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].value
$execute store result score ?value2 temp run data get entity $(target) Health 1

# Check if the health is equal to the value
execute if score ?result temp matches 0 if score ?health temp = ?value2 temp run scoreboard players set ?checks temp 1

# Check the type of check - less than or equal to
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].testfor
execute store success score ?result temp run data modify storage manhunt:comparison result set value "less_than"

$execute store result score ?value temp run data get storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].value
$execute store result score ?value2 temp run data get entity $(target) Health 1

# Check if the health is less than or equal to the value
execute if score ?result temp matches 0 if score ?health temp <= ?value2 temp run scoreboard players set ?checks temp 1

# Check the type of check - less than
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].testfor
execute store success score ?result temp run data modify storage manhunt:comparison result set value "less_than"

$execute store result score ?value temp run data get storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].value
$execute store result score ?value2 temp run data get entity $(target) Health 1

# Check if the health is less than the value
execute if score ?result temp matches 0 if score ?health temp < ?value2 temp run scoreboard players set ?checks temp 1