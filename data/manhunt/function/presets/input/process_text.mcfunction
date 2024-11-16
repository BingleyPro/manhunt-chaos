# manhunt:presets/input/process_text

$data modify storage manhunt:game preset.options[{id:"$(id)"}].value set from entity @a[limit=1] Inventory[0].components.minecraft:writable_book_content.pages[0].raw

function manhunt:presets/change_settings