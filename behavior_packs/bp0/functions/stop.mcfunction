# Stop Current Game Command - Available for all players

# Announce game stop
tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}

# Force each game to skip to game over sequence
execute if score .act global matches 101 run scoreboard players set .seq global 6700
execute if score .act global matches 201 run scoreboard players set .seq global 7200  
execute if score .act global matches 202 run scoreboard players set .seq global 8200
execute if score .act global matches 301 run scoreboard players set .seq global 7280
execute if score .act global matches 401 run scoreboard players set .seq global 4160
execute if score .act global matches 501 run scoreboard players set .seq global 7200
execute if score .act global matches 601 run scoreboard players set .seq global 7200

# Reset scores to invalidate current game results  
scoreboard players set "§4Team 1" score 0
scoreboard players set "§9Team 2" score 0