$execute store success score ?catalog_true2 temp run data get storage manhunt:preset catalog[$(catalog_page_index)]

execute store result storage manhunt:temp2 catalog_page_index int 1 run scoreboard players operation ?catalog_index temp += 1 constant

execute if score ?catalog_true2 temp matches 0 store result storage manhunt:temp2 catalog_page_index int 1 run scoreboard players operation ?catalog_index temp -= 1 constant

execute if score ?catalog_true2 temp matches 1 run function manhunt:storage/get_num_of_presets with storage manhunt:temp2