# manhunt:game/countdown_step

# Display countdown number
tellraw @a {"text":"Countdown: ${scoreboard.players.get('?countdown', 'game')}", "color":"yellow"}

# Decrease countdown
scoreboard players remove ?countdown game 1

# Check if countdown is over
execute if score ?countdown game matches ..0 run function manhunt:game/go
execute if score ?countdown game matches 1.. run function manhunt:game/countdown_step