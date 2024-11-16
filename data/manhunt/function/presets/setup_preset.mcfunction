# manhunt:presets/setup_preset

# Copy choosen preset into storage manhunt:game preset
data remove storage manhunt:game preset

$data modify storage manhunt:game preset set from storage manhunt:preset presets[{id:"$(id)"}]

# Run function to change any preset settings
function manhunt:presets/change_settings