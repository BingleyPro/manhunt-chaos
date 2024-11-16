# manhunt:presets/loop_preset_options

# Check if the index is less than the length of the presets array
execute if score ?index temp < ?length temp run function manhunt:presets/loop_options_body