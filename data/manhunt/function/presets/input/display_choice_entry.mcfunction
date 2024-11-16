# manhunt:presets/input/display_choice_entry

$tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/update_choice {id:\"$(option_id)\", choice_id:\"$(id)\"}"},"color":"$(color)","hoverEvent":{"action":"show_text","value":[{"text":"$(desc)","color":"gray"}]},"text":"$(name)"}