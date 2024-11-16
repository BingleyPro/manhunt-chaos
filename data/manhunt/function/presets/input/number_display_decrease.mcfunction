# manhunt:presets/input/number_display_decrease
scoreboard players remove ?value temp 1

$function manhunt:presets/input/prompt_number_display with storage manhunt:game preset.options[{id:"$(id)"}]