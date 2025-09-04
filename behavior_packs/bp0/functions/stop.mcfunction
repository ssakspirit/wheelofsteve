# Stop Current Game Command - Available only during mini-games

# Check if currently in a mini-game (act 101-601)
execute unless score .act global matches 101..601 run tellraw @s {"rawtext":[{"text":"§c현재 진행 중인 미니게임이 없습니다. 미니게임 중에만 사용할 수 있습니다."}]}

# Execute only during mini-games
execute if score .act global matches 101..601 run tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
execute if score .act global matches 101..601 run tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}

# Stop all background music and sounds
execute if score .act global matches 101..601 run stopsound @a

# Stop active game scoring by resetting .game to 0
execute if score .act global matches 101..601 run scoreboard players set .game global 0

# Force each game to skip to game over sequence (AFTER win condition checks)
execute if score .act global matches 101 run scoreboard players set .seq global 6700
execute if score .act global matches 201 run scoreboard players set .seq global 7560  
execute if score .act global matches 202 run scoreboard players set .seq global 8560
execute if score .act global matches 301 run scoreboard players set .seq global 7280
execute if score .act global matches 401 run scoreboard players set .seq global 4160
execute if score .act global matches 501 run scoreboard players set .seq global 7300
execute if score .act global matches 601 run scoreboard players set .seq global 7200

# Reset scores to invalidate current game results  
scoreboard players set "§4Team 1" score 0
scoreboard players set "§9Team 2" score 0