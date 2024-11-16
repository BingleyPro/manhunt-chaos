#function manhunt:api/print/print_title_text @a

tellraw @a {"text": ""}
$tellraw @a {"color":"$(main_text_color)","text":"$(main_text)"}
tellraw @a {"text": ""}

scoreboard players set ?loop info 0
$execute store result score ?length info run data get storage $(storage_location) $(storage_path).options

$data modify storage manhunt:temp4 choice_input set value {storage_location:"$(storage_location)",storage_path:"$(storage_path)", number: 0}

function manhunt:api/print/print_multiple with storage manhunt:temp4 choice_input

tellraw @a {"text": ""}
$tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:api/input/process_text_input {done_function:\"$(done_function)\",input_target:\"$(input_target)\",storage_location:\"$(storage_location)\",storage_path:\"$(storage_path)\"}"},"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"$(hover_text)","color":"$(hover_text_color)"}]},"text":"[Done]"}

#function manhunt:api/print/print_multiple {"storage_location":"manhunt:preset","storage_path":"catalog[0].choices[0]"}

#function manhunt:api/input/prompt_choice_input {"hover_text":"Click to finish","hover_text_color":"gray","main_text":"Select an option:","main_text_color":"green","done_function":"manhunt:done_function","is_done_button":true,"back_function":"manhunt:back_function","text_target":"@a","input_target":"BingleyPro",storage_location:"manhunt:preset",storage_path:"catalog[0].choices"}