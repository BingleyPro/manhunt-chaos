# manhunt:events/setup_events

# Initialize event index
scoreboard players set ?event_index temp 0

# Get total number of events
execute store result score ?event_total temp run data get storage manhunt:game preset.events

# Start the scheduling loop
function manhunt:events/setup_events_loop