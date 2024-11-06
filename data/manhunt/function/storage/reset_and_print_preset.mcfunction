scoreboard players set ?catalog_true temp 0
$scoreboard players set ?catalog_num temp $(num)

execute store result storage manhunt:temp2 catalog_num int 1 run scoreboard players operation ?catalog_num temp += 1 constant

function manhunt:storage/reset_and_print_preset2 with storage manhunt:temp2