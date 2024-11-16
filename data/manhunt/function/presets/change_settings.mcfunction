# manhunt:presets/change_settings

# Clear all writable books
clear @a writable_book

# Display title
function manhunt:display/display_title_text

# Display preset library
tellraw @a {"color":"gold","text":"\nEdit any preset settings!"}
tellraw @a {"text":""}

# Get the length of the options array
execute store result score ?length temp run data get storage manhunt:game preset.options

# Initialize loop index
scoreboard players set ?index temp 0

# Start looping through presets
function manhunt:presets/loop_preset_options

# Empty line
tellraw @a {"text":""}

# Display [Back] button
tellraw @a [{"clickEvent":{"action":"run_command","value":"/return fail"},"color":"green","text":"[Start (don't click)!]"},{"clickEvent":{"action":"run_command","value":"/function manhunt:presets/open_menu"},"color":"blue","text":"   [Back]"}]