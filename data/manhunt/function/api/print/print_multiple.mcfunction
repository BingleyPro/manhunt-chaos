$function manhunt:api/print/print_selection_button with storage $(storage_location) $(storage_path).options[0]

scoreboard players add ?loop info 1
$execute if score ?loop info < ?length info run function manhunt:api/print/print_multiple {storage_location:"$(storage_location)",storage_path:"$(storage_path)"}