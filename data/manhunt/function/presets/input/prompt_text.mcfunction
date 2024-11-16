# manhunt:presets/input/prompt_text

# Display title
function manhunt:display/display_title_text

# Give a player a book to write text in
give @a[limit=1] writable_book

# Display the title
tellraw @a {"text": ""}
$tellraw @a [{"color":"$(color)","text":"$(name)"},{"color":"gray","text":" - $(description)"}]
tellraw @a {"text": ""}

# Display the instructions
tellraw @a [{"color":"gold","text":"Write your input in the first page of the book!"}]
tellraw @a {"text": ""}

# Display the [Done] button
$tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/process_text {id:\"$(id)\"}"},"color":"aqua","text":"[Done]"}