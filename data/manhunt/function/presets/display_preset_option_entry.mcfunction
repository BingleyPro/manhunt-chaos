# manhunt:presets/display_preset_option_entry

# Compare the first value
data modify storage manhunt:comparison result set from storage manhunt:game preset.options[0].type

# Reset the result
scoreboard players set ?result temp 0

# Gather the comparison result
execute store success score ?result temp run data modify storage manhunt:comparison result set value "choice"

# For text, number inputs
$execute if score ?result temp matches 1 run tellraw @a [{"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/prompt_$(type) with storage manhunt:game preset.options[{id:\"$(id)\"}]"},"color":"$(color)","hoverEvent":{"action":"show_text","value":[{"text":"Click to set $(name)","color":"$(color)"}]},"text":"$(name): "},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to set $(name)","color":"$(color)"}]},"text":"$(value)"}]

# For choice inputs
$execute if score ?result temp matches 0 run tellraw @a [{"clickEvent":{"action":"run_command","value":"/function manhunt:presets/input/prompt_$(type) with storage manhunt:game preset.options[{id:\"$(id)\"}]"},"color":"$(color)","hoverEvent":{"action":"show_text","value":[{"text":"Click to set $(name)","color":"$(color)"}]},"text":"$(name): "},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to set $(name)","color":"$(color)"}]},"nbt":"preset.options[0].choices[{id:\"$(value)\"}].name","storage":"manhunt:game"}]