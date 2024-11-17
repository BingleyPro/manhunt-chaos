# manhunt:presets/input/loop_choices_body

# Add option id
$data modify storage manhunt:game preset.options[{id:"$(id)"}].choices[0] merge value {option_id:"$(id)"}

# Print the current preset
$function manhunt:presets/input/display_choice_entry with storage manhunt:game preset.options[{id:"$(id)"}].choices[0]

# Remove option id
$data remove storage manhunt:game preset.options[{id:"$(id)"}].choices[0][{option_id:"$(id)"}]

# Cycle choices array
$data modify storage manhunt:game preset.options[{id:"$(id)"}].choices append from storage manhunt:game preset.options[{id:"$(id)"}].choices[0]
$data remove storage manhunt:game preset.options[{id:"$(id)"}].choices[0]

# Increment the index
scoreboard players add ?index temp 1

# Loop again
$function manhunt:presets/input/loop_choices {id:"$(id)"}