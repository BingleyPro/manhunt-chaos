# Display title
function manhunt:display/display_title_text

# Display the title
tellraw @a {"text": ""}
$tellraw @a [{"color":"$(color)","text":"$(name)"},{"color":"gray","text":" - $(description)"}]
tellraw @a {"text": ""}

# Display the instructions
$tellraw @a [{"bold":true,"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/number_display_decrease with storage manhunt:game preset.options[{id:\"$(id)\"}]"},"color":"red","text":"<-1>"}," ",{"score":{"name":"?value","objective":"temp"}}," ",{"bold":true,"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/number_display_increase with storage manhunt:game preset.options[{id:\"$(id)\"}]"},"color":"green","text":"<+1>"}]
tellraw @a {"text": ""}

# Display the [Done] button
$tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/process_number {id:\"$(id)\"}"},"color":"aqua","text":"[Done]"}