$data modify storage manhunt:selection $(name).number set from storage manhunt:selection selectionFor
$data modify storage manhunt:selection $(name).name set value "$(name)"
$data modify storage manhunt:selection $(name).whatSelect set value "player_single"

# 1st string
$data modify storage manhunt:temp $(name) set value "$(name)"

# Step 2: Attempt to copy the second string to the first string
$execute store success storage manhunt:temp $(name).result int 1 run data modify storage manhunt:selection selection.1 set from storage manhunt:temp $(name)

$execute if data storage manhunt:temp $(name).result run tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:setup/selections/save_selection with storage manhunt:selection $(name)"},"text":"$(name)", "color":"green"}
$execute unless data storage manhunt:temp $(name).result run tellraw @a {"clickEvent":{"action":"run_command","value":"/function manhunt:setup/selections/save_selection with storage manhunt:selection $(name)"},"text":"$(name)", "color":"gold"}
