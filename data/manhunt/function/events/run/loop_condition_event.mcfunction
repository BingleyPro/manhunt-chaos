# manhunt:events/run/loop_condition_event

# Check if the index is less than the length of the conditions array
execute if score ?index temp < ?length temp run function manhunt:events/run/loop_condition_event_body with storage manhunt:game preset.events[{id:"$(id)"}]

# Otherwise, run the event
execute if score ?index temp >= ?length temp if score ?checks temp >= ?length temp run function manhunt:events/run/run_event with storage manhunt:game preset.events[{id:"$(id)"}].actions