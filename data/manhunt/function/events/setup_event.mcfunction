# manhunt:events/setup_event

# --- Check if the event has an interval trigger ---

# Compare the first value
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].trigger.type

# Reset the result
scoreboard players set ?result temp 0

# Gather the comparison result
execute store success score ?result temp run data modify storage manhunt:comparison result set value "interval"

# Is interval trigger
execute if score ?result temp matches 0 run function manhunt:events/setup_event_interval with storage anhunt:game preset.events[{id:"$(id)"}]

# Increment event index
scoreboard players add #event_index temp 1

# Loop back to schedule next event
function manhunt:events/setup_events_loop