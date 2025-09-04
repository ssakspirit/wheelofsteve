# Stop Current Game Command - Available only during active gameplay

# Check if currently in active gameplay (after countdown ends)
execute unless score .act global matches 101..601 run tellraw @s {"rawtext":[{"text":"§c현재 진행 중인 미니게임이 없습니다."}]}
execute if score .act global matches 101 unless score .seq global matches 660.. run tellraw @s {"rawtext":[{"text":"§c아직 게임이 시작되지 않았습니다. 게임 플레이 중에만 사용할 수 있습니다."}]}
execute if score .act global matches 201 unless score .seq global matches 1200.. run tellraw @s {"rawtext":[{"text":"§c아직 게임이 시작되지 않았습니다. 게임 플레이 중에만 사용할 수 있습니다."}]}
execute if score .act global matches 202 unless score .seq global matches 2200.. run tellraw @s {"rawtext":[{"text":"§c아직 게임이 시작되지 않았습니다. 게임 플레이 중에만 사용할 수 있습니다."}]}
execute if score .act global matches 301 unless score .seq global matches 1160.. run tellraw @s {"rawtext":[{"text":"§c아직 게임이 시작되지 않았습니다. 게임 플레이 중에만 사용할 수 있습니다."}]}
execute if score .act global matches 401 unless score .seq global matches 600.. run tellraw @s {"rawtext":[{"text":"§c아직 게임이 시작되지 않았습니다. 게임 플레이 중에만 사용할 수 있습니다."}]}
execute if score .act global matches 501 unless score .seq global matches 1160.. run tellraw @s {"rawtext":[{"text":"§c아직 게임이 시작되지 않았습니다. 게임 플레이 중에만 사용할 수 있습니다."}]}
execute if score .act global matches 601 unless score .seq global matches 980.. run tellraw @s {"rawtext":[{"text":"§c아직 게임이 시작되지 않았습니다. 게임 플레이 중에만 사용할 수 있습니다."}]}

# Execute only during active gameplay
execute if score .act global matches 101 if score .seq global matches 660.. run tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
execute if score .act global matches 201 if score .seq global matches 1200.. run tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
execute if score .act global matches 202 if score .seq global matches 2200.. run tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
execute if score .act global matches 301 if score .seq global matches 1160.. run tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
execute if score .act global matches 401 if score .seq global matches 600.. run tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
execute if score .act global matches 501 if score .seq global matches 1160.. run tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}
execute if score .act global matches 601 if score .seq global matches 980.. run tellraw @a {"rawtext":[{"text":"§c게임이 강제 종료됩니다."}]}

execute if score .act global matches 101 if score .seq global matches 660.. run tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}
execute if score .act global matches 201 if score .seq global matches 1200.. run tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}
execute if score .act global matches 202 if score .seq global matches 2200.. run tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}
execute if score .act global matches 301 if score .seq global matches 1160.. run tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}
execute if score .act global matches 401 if score .seq global matches 600.. run tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}
execute if score .act global matches 501 if score .seq global matches 1160.. run tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}
execute if score .act global matches 601 if score .seq global matches 980.. run tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":"§6님이 게임을 중단했습니다."}]}

# Stop all background music and sounds
execute if score .act global matches 101 if score .seq global matches 660.. run stopsound @a
execute if score .act global matches 201 if score .seq global matches 1200.. run stopsound @a
execute if score .act global matches 202 if score .seq global matches 2200.. run stopsound @a
execute if score .act global matches 301 if score .seq global matches 1160.. run stopsound @a
execute if score .act global matches 401 if score .seq global matches 600.. run stopsound @a
execute if score .act global matches 501 if score .seq global matches 1160.. run stopsound @a
execute if score .act global matches 601 if score .seq global matches 980.. run stopsound @a

# Stop active game scoring by resetting .game to 0
execute if score .act global matches 101 if score .seq global matches 660.. run scoreboard players set .game global 0
execute if score .act global matches 201 if score .seq global matches 1200.. run scoreboard players set .game global 0
execute if score .act global matches 202 if score .seq global matches 2200.. run scoreboard players set .game global 0
execute if score .act global matches 301 if score .seq global matches 1160.. run scoreboard players set .game global 0
execute if score .act global matches 401 if score .seq global matches 600.. run scoreboard players set .game global 0
execute if score .act global matches 501 if score .seq global matches 1160.. run scoreboard players set .game global 0
execute if score .act global matches 601 if score .seq global matches 980.. run scoreboard players set .game global 0

# Force each game to skip to game over sequence (AFTER win condition checks)
execute if score .act global matches 101 if score .seq global matches 660.. run scoreboard players set .seq global 6700
execute if score .act global matches 201 if score .seq global matches 1200.. run scoreboard players set .seq global 7560  
execute if score .act global matches 202 if score .seq global matches 2200.. run scoreboard players set .seq global 8560
execute if score .act global matches 301 if score .seq global matches 1160.. run scoreboard players set .seq global 7280
execute if score .act global matches 401 if score .seq global matches 600.. run scoreboard players set .seq global 4160
execute if score .act global matches 501 if score .seq global matches 1160.. run scoreboard players set .seq global 7300
execute if score .act global matches 601 if score .seq global matches 980.. run scoreboard players set .seq global 7200

# Reset scores to invalidate current game results (only during active gameplay)
execute if score .act global matches 101 if score .seq global matches 660.. run scoreboard players set "§4Team 1" score 0
execute if score .act global matches 201 if score .seq global matches 1200.. run scoreboard players set "§4Team 1" score 0
execute if score .act global matches 202 if score .seq global matches 2200.. run scoreboard players set "§4Team 1" score 0
execute if score .act global matches 301 if score .seq global matches 1160.. run scoreboard players set "§4Team 1" score 0
execute if score .act global matches 401 if score .seq global matches 600.. run scoreboard players set "§4Team 1" score 0
execute if score .act global matches 501 if score .seq global matches 1160.. run scoreboard players set "§4Team 1" score 0
execute if score .act global matches 601 if score .seq global matches 980.. run scoreboard players set "§4Team 1" score 0

execute if score .act global matches 101 if score .seq global matches 660.. run scoreboard players set "§9Team 2" score 0
execute if score .act global matches 201 if score .seq global matches 1200.. run scoreboard players set "§9Team 2" score 0
execute if score .act global matches 202 if score .seq global matches 2200.. run scoreboard players set "§9Team 2" score 0
execute if score .act global matches 301 if score .seq global matches 1160.. run scoreboard players set "§9Team 2" score 0
execute if score .act global matches 401 if score .seq global matches 600.. run scoreboard players set "§9Team 2" score 0
execute if score .act global matches 501 if score .seq global matches 1160.. run scoreboard players set "§9Team 2" score 0
execute if score .act global matches 601 if score .seq global matches 980.. run scoreboard players set "§9Team 2" score 0