$give $(input_target) writable_book

$function manhunt:api/print/print_title_text {text_target:"$(text_target)"}

$tellraw $(text_target) {"text": ""}
$tellraw $(text_target) {"color":"$(main_text_color)","text":"$(main_text)"}
$tellraw $(text_target) {"text": ""}
$tellraw $(text_target) {"clickEvent":{"action":"run_command","value":"/function manhunt:api/input/process_text_input {done_function:\"$(done_function)\",input_target:\"$(input_target)\",storage_location:\"$(storage_location)\",storage_path:\"$(storage_path)\"}"},"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"$(hover_text)","color":"$(hover_text_color)"}]},"text":"[Done]"}