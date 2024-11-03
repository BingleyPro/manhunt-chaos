$execute store success score ?catalog_true temp run data get storage manhunt:preset catalog[$(num)]

$scoreboard players set ?catalog_num temp $(num)

execute store result storage manhunt:temp3 catalog_page_down int 1 run scoreboard players operation ?catalog_page temp -= 1 constant

execute store result storage manhunt:temp3 catalog_page_up int 1 run scoreboard players operation ?catalog_page temp += 2 constant

execute store result storage manhunt:temp3 catalog_page int 1 run scoreboard players operation ?catalog_page temp -= 1 constant

scoreboard players operation ?catalog_pages temp = ?catalog_index temp
scoreboard players operation ?catalog_pages temp += 4 constant
execute store result storage manhunt:temp3 catalog_pages int 1 run scoreboard players operation ?catalog_pages temp /= 5 constant

execute if score ?catalog_true temp matches 0 run function manhunt:storage/print_page_controls with storage manhunt:temp3

execute if score ?catalog_num temp > ?catalog_max temp run function manhunt:storage/print_page_controls with storage manhunt:temp3

$execute unless score ?catalog_num temp > ?catalog_max temp if score ?catalog_true temp matches 1.. run function manhunt:display/print_preset with storage manhunt:preset catalog[$(num)]

$execute unless score ?catalog_num temp > ?catalog_max temp if score ?catalog_true temp matches 1.. run function manhunt:storage/reset_and_print_preset {"num":$(num)}