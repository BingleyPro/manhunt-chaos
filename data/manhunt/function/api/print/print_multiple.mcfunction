$function manhunt:api/print/print_selection_button with storage $(storage_location) $(storage_path).options[$(number)]

scoreboard players add ?loop info 1

$scoreboard players set ?temp2 info $(number)
execute store result storage manhunt:temp3 hello int 1 run scoreboard players add ?temp2 info 1

$execute if score ?loop info < ?length info run function manhunt:api/print/print_multiple {storage_location:"$(storage_location)",storage_path:"$(storage_path)"}