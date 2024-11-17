# manhunt:events/run/loop_condition_event_body

# Check if the condition is true
$execute unless predicate $(type) run return fail

# Cycle conditions array
$data modify storage manhunt:game preset.events[{id:"$(id)"}].conditions append from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]
$data remove storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Increment the index
scoreboard players add ?index temp 1

# Loop again
function manhunt:events/run/loop_condition_event