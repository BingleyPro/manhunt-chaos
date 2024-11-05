give @a writable_book

function manhunt:api/print/print_title_text

tellraw @a {"color":"gold","text":"Use the first line of the book to write your preset name!"}
tellraw @a {"text": ""}
tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:api/preset/read_preset_name"},"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click this once you've written your preset's name in the book","color":"dark_red"}]},"text":"[Done]"}