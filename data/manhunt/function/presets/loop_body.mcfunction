# manhunt:presets/loop_body

# Cycle presets array
data modify storage manhunt:preset presets append from storage manhunt:preset presets[0]
data remove storage manhunt:preset presets[0]

# Print the current preset
function manhunt:presets/display_preset_entry with storage manhunt:preset presets[0]

# Increment the index
scoreboard players add ?index temp 1

# Loop again
function manhunt:presets/loop_presets