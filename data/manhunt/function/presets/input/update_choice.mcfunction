# manhunt:presets/input/update_choice

# Modify selection
$data modify storage manhunt:game preset.options[{id:"$(id)"}].choices[{id:"$(choice_id)"}] set from storage manhunt:game preset.options[{id:"$(id)"}].choices[{id:"$(choice_id)"}].id

# Run function
$function manhunt:presets/input/prompt_choice with storage manhunt:game preset.options[{id:"$(id)"}]