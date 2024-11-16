# manhunt:presets/input/process_number

$execute store result storage manhunt:game preset.options[{id:"$(id)"}].value int 1 run scoreboard players get ?value temp

function manhunt:presets/change_settings