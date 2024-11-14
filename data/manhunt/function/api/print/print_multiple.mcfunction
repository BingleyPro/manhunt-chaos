$function manhunt:api/print/print_selection_button with storage $(storage_location) $(storage_path).options[$(number)]

scoreboard players add ?loop info 1

$scoreboard players set ?temp2 info $(number)
execute store result storage manhunt:temp4 choice_input.number int 1 run scoreboard players add ?temp2 info 1

execute if score ?loop info < ?length info run function manhunt:api/print/print_multiple with storage manhunt:temp4 choice_input