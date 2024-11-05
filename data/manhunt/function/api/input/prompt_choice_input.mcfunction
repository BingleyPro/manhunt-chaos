$function manhunt:api/print/print_title_text {text_target:"$(text_target)"}

$tellraw $(text_target) {"text": ""}
$tellraw $(text_target) {"color":"$(main_text_color)","text":"$(main_text)"}
$tellraw $(text_target) {"text": ""}

scoreboard players set ?loop info 0
$execute store result score ?length info run data get storage $(storage_location) $(storage_path).options

$function manhunt:api/print/print_multiple {storage_location:"$(storage_location)",storage_path:"$(storage_path)"}

$tellraw $(text_target) {"text": ""}
$tellraw $(text_target) {"clickEvent":{"action":"run_command","value":"/function manhunt:api/input/process_text_input {done_function:\"$(done_function)\",input_target:\"$(input_target)\",storage_location:\"$(storage_location)\",storage_path:\"$(storage_path)\"}"},"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"$(hover_text)","color":"$(hover_text_color)"}]},"text":"[Done]"}