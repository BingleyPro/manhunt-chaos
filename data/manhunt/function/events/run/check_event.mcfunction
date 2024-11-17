# manhunt:events/run/check_event

# Get the length of the conditions array
execute store result score ?length temp run data get storage manhunt:game preset.events[{id:"$(id)"}].conditions

# Initialize loop index
scoreboard players set ?index temp 0

# Start looping through conditions
function manhunt:events/run/loop_condition_event with storage manhunt:game preset.events[{id:"$(id)"}]