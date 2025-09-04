# Stop Current Game Command - Available for all players

# Announce game stop
tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}

# Force timer to expire by dealing massive damage
effect @e[type=rwm:timer] instant_damage 1 99 true

# Reset scores to invalidate current game results  
scoreboard players set "§4Team 1" score 0
scoreboard players set "§9Team 2" score 0