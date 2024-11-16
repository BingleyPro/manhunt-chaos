# manhunt:presets/input/prompt_choice

# Display title
function manhunt:display/display_title_text

# Display the title
tellraw @a {"text": ""}
$tellraw @a [{"color":"$(color)","text":"$(name)"},{"color":"gray","text":" - $(description)"}]
tellraw @a {"text": ""}

# Get the length of the choices array
$execute store result score ?length temp run data get storage manhunt:game preset.options[{id:"$(id)"}].choices

# Initialize loop index
scoreboard players set ?index temp 0

# Start looping through presets
$function manhunt:presets/input/loop_choices {id:"$(id)"}

# Empty line
tellraw @a {"text": ""}

# Display the [Done] button
$tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/process_text {id:\"$(id)\"}"},"color":"aqua","text":"[Done]"}