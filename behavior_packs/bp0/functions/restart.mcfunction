## Restart Command - 게임 선택 장소로 이동
## 팀 선택 후 게임을 시작하기 위해 사용

# 게임 선택 장소로 모든 플레이어 텔레포트
tellraw @a {"rawtext":[{"text":"§6게임 선택 장소로 이동합니다..."}]}
tp @a[tag=!admin] 1.0 60 1000 0 0  
tp @a[tag=admin] 1.0 65 1000 0 0

# 사운드 효과
playsound mob.enderdragon.flap @a ~ ~ ~ 1 2.0

# 성공 메시지
tellraw @a {"rawtext":[{"text":"§a게임 선택 장소로 이동완료! 원하는 게임을 선택하세요."}]}