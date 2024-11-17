# manhunt:events/run/run_event

# Get the length of the actions array
execute store result score ?length temp run data get storage manhunt:game preset.events[{id:"$(id)"}].actions

# Initialize loop index
scoreboard players set ?index temp 0

# Start looping through conditions
function manhunt:events/run/loop_action_event with storage manhunt:game preset.events[{id:"$(id)"}]