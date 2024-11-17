# manhunt:events/schedule_interval_event_loop

# Check if we've processed all events
execute if score #event_index temp < #event_total temp run function manhunt:events/setup_events_loop_body