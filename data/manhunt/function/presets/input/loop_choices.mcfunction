# manhunt:presets/input/loop_choices

# Check if the index is less than the length of the choices array
$execute if score ?index temp < ?length temp run function manhunt:presets/input/loop_choices_body {id:"$(id)"}