# manhunt:events/run/loop_condition_event_body

# --- Get the type of condition ---
# Reset the result
scoreboard players set ?result temp 0

# Compare for game_started
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].type
execute store success score ?result temp run data modify storage manhunt:comparison result set value "game_started"
execute if score ?result temp matches 0 run function manhunt:events/run/condition/run_game_started_condition with storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Compare for player_health
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].type
execute store success score ?result temp run data modify storage manhunt:comparison result set value "player_health"
execute if score ?result temp matches 0 run function manhunt:events/run/condition/run_player_health_condition with storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Compare for predicate
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].type
execute store success score ?result temp run data modify storage manhunt:comparison result set value "predicate"
execute if score ?result temp matches 0 run function manhunt:events/run/condition/run_predicate_condition with storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Compare for score
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].type
execute store success score ?result temp run data modify storage manhunt:comparison result set value "score"
execute if score ?result temp matches 0 run function manhunt:events/run/condition/run_score_condition with storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Compare for tag
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].type
execute store success score ?result temp run data modify storage manhunt:comparison result set value "tag"
execute if score ?result temp matches 0 run function manhunt:events/run/condition/run_tag_condition with storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Compare for effect
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].type
execute store success score ?result temp run data modify storage manhunt:comparison result set value "effect"
execute if score ?result temp matches 0 run function manhunt:events/run/condition/run_effect_condition with storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Compare for time_passed
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].type
execute store success score ?result temp run data modify storage manhunt:comparison result set value "time_passed"
execute if score ?result temp matches 0 run function manhunt:events/run/condition/run_time_passed_condition with storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Compare for custom_condition
$data modify storage manhunt:comparison result set from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0].type
execute store success score ?result temp run data modify storage manhunt:comparison result set value "custom_condition"
execute if score ?result temp matches 0 run function manhunt:events/run/condition/run_custom_condition

# NBTs don't match any known types
execute if score ?result temp matches 1 run return fail

# Cycle conditions array
$data modify storage manhunt:game preset.events[{id:"$(id)"}].conditions append from storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]
$data remove storage manhunt:game preset.events[{id:"$(id)"}].conditions[0]

# Increment the index
scoreboard players add ?index temp 1

# Loop again
function manhunt:events/run/loop_condition_event

# manhunt:events/run/condition/run_game_started_condition

execute if score ?game_running game matches 1 run scoreboard players add ?checks temp 1