## Score Team 2
scoreboard players add "§9Team 2" score 3
execute at @a[scores={team=2}] run playsound note.iron_xylophone @a[scores={team=2}] ~ ~ ~ 1 1.5
execute as @s[type=rwm:nock_target] run summon rwm:nock_knockback ~ ~ ~
execute as @s[type=rwm:nock_target] run particle rwm:plus_3 ~ ~ ~