# manhunt:presets/input/number_display_increase
scoreboard players add ?value temp 1

$function manhunt:presets/input/prompt_number_display with storage manhunt:game preset.options[{id:"$(id)"}]