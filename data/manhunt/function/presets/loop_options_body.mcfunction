# manhunt:presets/loop_options_body

# Print the current preset option
function manhunt:presets/display_preset_option_entry with storage manhunt:game preset.options[0]

# Cycle presets array
data modify storage manhunt:game preset.options append from storage manhunt:game preset.options[0]
data remove storage manhunt:game preset.options[0]

# Increment the index
scoreboard players add ?index temp 1

# Loop again
function manhunt:presets/loop_preset_options