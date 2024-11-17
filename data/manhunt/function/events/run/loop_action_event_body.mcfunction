# manhunt:events/run/loop_condition_event_body

# Cycle actions array
$data modify storage manhunt:game preset.events[{id:"$(id)"}].actions append from storage manhunt:game preset.events[{id:"$(id)"}].actions[0]
$data remove storage manhunt:game preset.events[{id:"$(id)"}].actions[0]

# --- Get the type of action ---
# Compare the first value
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].actions[0].type

# Reset the result
scoreboard players set ?result temp 0

# NBTs match - command
execute store success score ?result temp run data modify storage manhunt:comparison result set value "command"
execute if score ?result temp matches 0 run function manhunt:events/run/action/run_command_action with storage manhunt:game preset.events[{id:"$(id)"}].actions[0]

# Compare the first value
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].actions[0].type

# NBTs match - function
execute store success score ?result temp run data modify storage manhunt:comparison result set value "function"
execute if score ?result temp matches 0 run function manhunt:events/run/action/run_function_action with storage manhunt:game preset.events[{id:"$(id)"}].actions[0]

# Compare the first value
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].actions[0].type

# NBTs match - effect
execute store success score ?result temp run data modify storage manhunt:comparison result set value "effect"
execute if score ?result temp matches 0 run function manhunt:events/run/action/run_effect_action with storage manhunt:game preset.events[{id:"$(id)"}].actions[0]

# Compare the first value
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].actions[0].type

# NBTs match - message
execute store success score ?result temp run data modify storage manhunt:comparison result set value "message"
execute if score ?result temp matches 0 run function manhunt:events/run/action/run_message_action with storage manhunt:game preset.events[{id:"$(id)"}].actions[0]

# Compare the first value
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].actions[0].type

# NBTs don't match any known types
execute if score ?result temp matches 1 run function manhunt:events/run/action/run_unknown_action with storage manhunt:game preset.events[{id:"$(id)"}].actions[0]

# Increment the index
scoreboard players add ?index temp 1

# Loop again
function manhunt:events/run/loop_action_event