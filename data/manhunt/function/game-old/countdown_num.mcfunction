tellraw @a {"bold":true,"color":"green","score":{"name":"?countdown","objective":"info"}}
stopsound @a master minecraft:entity.experience_orb.pickup
execute as @a at @s run playsound entity.experience_orb.pickup master @s

scoreboard players remove ?countdown info 1
execute if score ?countdown info > 0 constant run schedule function manhunt:game/countdown_num 1s