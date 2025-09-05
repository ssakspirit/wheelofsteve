## Reset Command - 게임 초기화 명령어
## 로비에서만 실행 가능, 전체 게임 점수 및 팀 초기화

# 로비가 아닌 경우 경고 메시지
execute unless score .act global matches 0 run tellraw @s {"rawtext":[{"text":"§c게임 선택 로비에서만 reset 명령을 사용할 수 있습니다."}]}
execute unless score .act global matches 0 run tellraw @s {"rawtext":[{"text":"§c현재 진행 중인 컷신이나 게임을 중단하려면 /function stop 명령을 사용하세요."}]}

# 로비에서만 실행되는 초기화 로직
execute if score .act global matches 0 run tellraw @a {"rawtext":[{"text":"§6게임이 초기화되었습니다. 팀을 다시 선택해주세요."}]}

# 전체 게임 점수 초기화
execute if score .act global matches 0 run scoreboard players set .team1wins global 0
execute if score .act global matches 0 run scoreboard players set .team2wins global 0
execute if score .act global matches 0 run scoreboard players set "§4Team 1" team_scores 0
execute if score .act global matches 0 run scoreboard players set "§9Team 2" team_scores 0

# 팀 초기화
execute if score .act global matches 0 run function utility/teams/teams_clear

# 플레이어들을 팀 선택 장소로 이동
execute if score .act global matches 0 run tp @a[tag=!admin] -45 66 1018
execute if score .act global matches 0 run tp @a[tag=admin] -45 71 1018

# 인벤토리 정리 및 상태 초기화
execute if score .act global matches 0 run clear @a
execute if score .act global matches 0 run effect @a clear

# 게임 선택 버튼 활성화 (호스트 감지 다시 시작)
execute if score .act global matches 0 run function utility/lobby/detect_host_player

# 게임 모드 설정
execute if score .act global matches 0 run gamemode adventure @a[tag=!admin]
execute if score .act global matches 0 run gamemode spectator @a[tag=admin]

# 권한 및 UI 초기화
execute if score .act global matches 0 run inputpermission set @a movement enabled
execute if score .act global matches 0 run inputpermission set @a camera enabled
execute if score .act global matches 0 run hud @a reset
execute if score .act global matches 0 run camera @a clear

# 시간 조절 모드도 초기화
execute if score .act global matches 0 run scoreboard players set .time_mode global 0

# 성공 알림
execute if score .act global matches 0 run playsound note.pling @a ~ ~ ~ 1 2.0