# manhunt:presets/open_menu

# Display title
function manhunt:display/display_title_text

# Display preset library
tellraw @a {"color":"gold","text":"\nChoose a preset to use!"}
tellraw @a {"text":""}

# Get the length of the presets array
execute store result score ?length temp run data get storage manhunt:preset presets

# Initialize loop index
scoreboard players set ?index temp 0

# Start looping through presets
function manhunt:presets/loop_presets