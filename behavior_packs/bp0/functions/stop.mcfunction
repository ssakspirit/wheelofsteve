# Stop Current Game Command - Available for all players

# Announce game stop
tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}

# Force timer entity games to expire (Orb, Craft, Grid, Elytra, Finale)
effect @e[type=rwm:timer] instant_damage 1 99 true

# Force Nock game to skip to game over (seq 4160)
execute if score .act global matches 401 run scoreboard players set .seq global 4160

# Reset scores to invalidate current game results  
scoreboard players set "§4Team 1" score 0
scoreboard players set "§9Team 2" score 0