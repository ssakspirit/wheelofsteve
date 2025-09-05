# Set game time to 100% (normal) - Available only in lobby
execute unless score .act global matches 0 run tellraw @s {"rawtext":[{"text":"§c로비에서만 게임 시간을 조절할 수 있습니다."}]}

execute if score .act global matches 0 run tellraw @a {"rawtext":[{"text":"§6게임 시간이 100%로 설정되었습니다. (정상 속도)"}]}  
execute if score .act global matches 0 run scoreboard players set .time_mode global 3