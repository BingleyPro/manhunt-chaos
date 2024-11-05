$function manhunt:api/print/print_selection_button with storage $(storage_location) $(storage_path).options[{score:{?loop:info}}]

scoreboard players add ?loop info 1
execute if score ?loop info < ?length info run function manhunt:api/print/print_multiple