# manhunt:presets/input/display_choice_entry

# Compare the first value
$data modify storage manhunt:comparison result set from storage manhunt:game preset.options[{id:"$(option_id)"}].value

# Reset the result
scoreboard players set ?result temp 0

# Gather the comparison result
$execute store success score ?result temp run data modify storage manhunt:comparison result set from storage manhunt:game preset.options[{id:"$(option_id)"}].choices[0].id

# NBTs match
$execute if score ?result temp matches 0 run tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/update_choice {id:\"$(option_id)\",choice_id:\"$(id)\"}"},"color":"$(color)","hoverEvent":{"action":"show_text","value":[{"text":"$(desc)","color":"gray"}]},"text":"$(name)","bold":true}

# NBTs don't match
$execute if score ?result temp matches 1 run tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/update_choice {id:\"$(option_id)\",choice_id:\"$(id)\"}"},"color":"$(color)","hoverEvent":{"action":"show_text","value":[{"text":"$(desc)","color":"gray"}]},"text":"$(name)"}