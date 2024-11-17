# manhunt:events/setup_events_loop_body

# Setup the event
function manhunt:events/setup_event with storage manhunt:game preset.events[0]

# Cycle events array
data modify storage manhunt:game preset.events append from storage manhunt:game preset.events[0]
data remove storage manhunt:game preset.events[0]

# Increment the index
scoreboard players add ?event_index temp 1

# Loop again
function manhunt:events/setup_events_loop