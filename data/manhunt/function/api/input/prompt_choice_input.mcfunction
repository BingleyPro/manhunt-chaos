$function manhunt:api/print/print_title_text {text_target:"$(text_target)"}

$tellraw $(text_target) {"text": ""}
$tellraw $(text_target) {"color":"$(main_text_color)","text":"$(main_text)"}
$tellraw $(text_target) {"text": ""}

scoreboard players set ?loop info 0
$execute store result score ?length info run data get storage $(storage_location) $(storage_path).options

$function manhunt:api/print/print_multiple {storage_location:"$(storage_location)",storage_path:"$(storage_path)"}

$tellraw $(text_target) {"text": ""}
$tellraw $(text_target) {"clickEvent":{"action":"run_command","value":"/function manhunt:api/input/process_text_input {done_function:\"$(done_function)\",input_target:\"$(input_target)\",storage_location:\"$(storage_location)\",storage_path:\"$(storage_path)\"}"},"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"$(hover_text)","color":"$(hover_text_color)"}]},"text":"[Done]"}

# data modify storage manhunt:preset cata

#manhunt:api/input/prompt_choice_input	main_text, main_text_color, done_function, is_done_button, back_function, text_target, input_target, options[], options[].text,options[].unselected_text_color,options[].selected_text_color, options[].bold_on_select, options[].is_selected, options[].path_name,storage_location, storage_path
#{"catalog":[{"preset_name":"Example Preset","color":"blue","desc":"An example description","choices":[{"main_text":"Select an option:","main_text_color":"green","done_function":"manhunt:done_function","is_done_button":true,"back_function":"manhunt:back_function","text_target":"@p","input_target":"@p","storage_location":"manhunt:preset","storage_path":"catalog[0].choices","options":[{"text":"Option 1","unselected_text_color":"gray","selected_text_color":"white","bold_on_select":true,"is_selected":false,"path_name":"option1"},{"text":"Option 2","unselected_text_color":"dark_gray","selected_text_color":"light_gray","bold_on_select":false,"is_selected":false,"path_name":"option2"}]}]}]}
