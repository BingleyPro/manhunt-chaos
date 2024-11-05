function manhunt:api/print/print_title_text {text_target:"@a"}

tellraw @a {"text": ""}
tellraw @a {"bold":true,"color":"gold","text":"Create a new preset:"}
tellraw @a {"text": ""}

# Ask for name
tellraw @a [{"clickEvent":{"action":"run_command","value":"/function manhunt:api/input/prompt_text_input {main_text:\"Use the first line of the book to write your preset name!\",main_text_color:\"gold\",done_function:\"manhunt:api/preset/read_preset_name\",hover_text:\"Click this once you've written your preset's name in the book\",hover_text_color:\"dark_red\",text_target:\"@a\",input_target:\"@a\",storage_location:\"manhunt:preset\",storage_path:\"temp.preset_name\"}"},"color":"green","text":"Name: "},{"color":"gray","nbt":"temp.preset_name","storage":"manhunt:preset"}]

# --- UPDATE INPUT TARGET ABOVE !!! (@a is not good enough, should be one target)