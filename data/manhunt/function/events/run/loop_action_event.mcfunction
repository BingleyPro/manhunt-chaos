# manhunt:events/run/loop_action_event

# Check if the index is less than the length of the actions array
execute if score ?index temp < ?length temp run function manhunt:events/run/loop_action_event_body with storage manhunt:game preset.events[{id:"$(id)"}]