# Display title
function manhunt:display/display_title_text

# Display preset library
tellraw @a {"color":"gold","text":"\nChoose a preset to begin!"}
tellraw @a {"text":""}

scoreboard players set ?catalog_index temp 0
function manhunt:storage/get_num_of_presets {catalog_page_index:0}

scoreboard players set ?catalog_true temp 0

$scoreboard players set ?catalog_page temp $(page)

execute if score ?catalog_page temp <= 0 constant run scoreboard players set ?catalog_page temp 1

$scoreboard players set ?catalog_min temp $(page)

execute unless score ?catalog_min temp <= 0 constant run scoreboard players operation ?catalog_min temp *= 5 constant

execute unless score ?catalog_min temp <= 0 constant store result storage manhunt:temp2 num int 1 run scoreboard players operation ?catalog_min temp -= 5 constant

execute if score ?catalog_min temp <= 0 constant store result storage manhunt:temp2 num int 1 run scoreboard players set ?catalog_min temp 0

$scoreboard players set ?catalog_max temp $(page)

execute unless score ?catalog_max temp <= 0 constant run scoreboard players operation ?catalog_max temp *= 5 constant
# above, 5 is max results on page

execute unless score ?catalog_max temp <= 0 constant run scoreboard players operation ?catalog_max temp -= 1 constant

execute if score ?catalog_max temp <= 0 constant run scoreboard players set ?catalog_max temp 4

function manhunt:storage/print_all_presets with storage manhunt:temp2