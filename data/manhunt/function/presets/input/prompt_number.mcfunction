# manhunt:presets/input/prompt_number

# Copy the value into a scoreboard value
$scoreboard players set ?value temp $(value)

$function manhunt:presets/input/prompt_number_display with storage manhunt:game preset.options[{id:"$(id)"}]

#unction manhunt:presets/input/prompt_$(type) with storage manhunt:game preset.options[{id:"$(id)"}]