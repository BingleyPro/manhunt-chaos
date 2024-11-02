# Display message
tellraw @a [{"color":"#FFD78A","text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-"},{"color":"#FED285","text":"-"},{"color":"#FECC80","text":"- "},{"color":"#FDC77B","text":"M"},{"color":"#FDC175","text":"a"},{"color":"#FCBC70","text":"n"},{"color":"#FBB76B","text":"h"},{"color":"#FBB166","text":"u"},{"color":"#FAAC61","text":"n"},{"color":"#FAA75C","text":"t "},{"color":"#F9A156","text":"C"},{"color":"#F89C51","text":"h"},{"color":"#F8964C","text":"a"},{"color":"#F79147","text":"o"},{"color":"#F68C42","text":"s "},{"color":"#F6863D","text":"-"},{"color":"#F58137","text":"-"},{"color":"#F4762D","text":"-"}]
tellraw @p [{"color":"gray","italic":true,"text":"v1.0 for 1.21.3 by "},{"bold":true,"color":"#0061FF","italic":true,"text":"B"},{"bold":true,"color":"#0E75FF","italic":true,"text":"i"},{"bold":true,"color":"#1B8AFF","italic":true,"text":"n"},{"bold":true,"color":"#299EFF","italic":true,"text":"g"},{"bold":true,"color":"#37B2FF","italic":true,"text":"l"},{"bold":true,"color":"#45C6FF","italic":true,"text":"e"},{"bold":true,"color":"#60EFFF","italic":true,"text":"y"}]

tellraw @a {"color":"gold","text":"\nChoose a goal"}
tellraw @a {"text":""}

$data modify storage manhunt:selection selectionFor set value "$(selectionFor)"

$tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:setup/selections/save_selection {\"number\":$(selectionFor),\"name\":\"Beat the game\",\"whatSelect\":\"goal\"}"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Defeat the enderdragon for the speedrunner to win!"}]},"text":"Beat the game"}

tellraw @a ""
tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:setup/setup_preset"},"color":"yellow","text":"[Back]"}