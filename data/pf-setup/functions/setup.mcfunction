# Begin setup file.
tellraw @a [{"text":"\u00A76PF Setup \u00A78: \u00A72Starting setup for \u00A7dPure \u00A7dFactions \u00A78[\u00A7ev0.0.5\u00A78]","color":"dark_green"}]
# Trigger setup.
tellraw @a [{"text":"\u00A76PF Setup \u00A78: \u00A72Setting up triggers..."}]
scoreboard objectives add pf.help trigger PF Help
scoreboard objectives add pf.fhome trigger PF Home
scoreboard objectives add pf.fsethome trigger PF Set Home
scoreboard objectives add pf.seealluuids trigger PF See All UUIDs
scoreboard objectives add pf.spawnpoint trigger PF Spawnpoint
scoreboard objectives add pf.tpa trigger PF TPA
scoreboard objectives add pf.tpaccept trigger PF TPAccept
scoreboard objectives add pf.tpdeny trigger PF TPDeny

scoreboard objectives add pf.admin.t_u_p trigger PF Toggle UUID Profiling

scoreboard objectives add pf.pa.admin trigger PF Make Admin
scoreboard objectives add pf.pa.edit_perms trigger PF Edit Perms
scoreboard objectives add pf.pa.main trigger PF Main

scoreboard objectives add pf.pr.admin trigger PF Remove Admin
scoreboard objectives add pf.pr.edit_perms trigger PF Edit Perms
scoreboard objectives add pf.pr.main trigger PF Main
# Trigger enabling.
tellraw @a [{"text":"\u00A76PF Setup \u00A78: \u00A72Enabling triggers..."}]
scoreboard players enable @a pf.help
scoreboard players enable @a pf.fhome
scoreboard players enable @a pf.fsethome
scoreboard players enable @a pf.seealluuids
scoreboard players enable @a pf.spawnpoint
scoreboard players enable @a pf.tpa
scoreboard players enable @a pf.tpaccept
scoreboard players enable @a pf.tpdeny

scoreboard players enable @a pf.admin.t_u_p

scoreboard players enable @a pf.pa.admin
scoreboard players enable @a pf.pa.edit_perms
scoreboard players enable @a pf.pa.main

scoreboard players enable @a pf.pr.admin
scoreboard players enable @a pf.pr.edit_perms
scoreboard players enable @a pf.pr.main
# Data point setup.
tellraw @a [{"text":"\u00A76PF Setup \u00A78: \u00A72etting up data points..."}]
scoreboard objectives add pf.xpos dummy PF XCord
scoreboard objectives add pf.ypos dummy PF YCord
scoreboard objectives add pf.zpos dummy PF ZCord
scoreboard objectives add pf.uuid dummy PF UUID
scoreboard objectives add pf.db dummy PF Database
scoreboard objectives add pf.relog dummy PF Relog
scoreboard objectives add pf.deaths deathCount Deaths
scoreboard objectives setdisplay list pf.deaths
# PF Database Prior Bug Fixes.
scoreboard players operation OLD_UUID pf.db = @e[tag=pf.stand,name=pf.main] pf.uuid
# PF Database Setup.
tellraw @a [{"text":"\u00A76PF Setup \u00A78: \u00A72Setting up Pure Factions Database... Using X+,Z+ coordinates...","color":"dark_green"}]
execute as @e[tag=pf.stand,name=pf.main] run kill @s
summon armor_stand 0 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.main\",\"color\":\"gold\"}",Tags:["pf.stand"]}
execute as @e[tag=pf.stand,name=pf.proxy1] run kill @s
summon armor_stand 1 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.proxy1\",\"color\":\"gold\"}",Tags:["pf.stand"]}
execute as @e[tag=pf.stand,name=pf.proxy2] run kill @s
summon armor_stand 0 255 1 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.proxy2\",\"color\":\"gold\"}",Tags:["pf.stand"]}
execute as @e[tag=pf.stand,name=pf.proxy3] run kill @s
summon armor_stand 2 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.proxy3\",\"color\":\"gold\"}",Tags:["pf.stand"]}
execute as @e[tag=pf.stand,name=pf.adminer] run kill @s
summon armor_stand 1 255 1 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.adminer\",\"color\":\"gold\"}",Tags:["pf.stand"]}
execute as @e[tag=pf.stand,name=pf.mainer] run kill @s
summon armor_stand 0 255 2 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.mainer\",\"color\":\"gold\"}",Tags:["pf.stand"]}
execute as @e[tag=pf.stand,name=pf.playersonline] run kill @s
summon armor_stand 3 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.playersonline\",\"color\":\"gold\"}",Tags:["pf.stand"]}
execute as @e[tag=pf.stand,name=pf.tpafind] run kill @s
summon armor_stand 2 255 1 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.tpafind\",\"color\":\"gold\"}",Tags:["pf.stand"]}
execute as @e[tag=pf.stand,name=pf.tparequest] run kill @s
summon armor_stand 1 255 2 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"pf.tparequest\",\"color\":\"gold\"}",Tags:["pf.stand"]}
# PF Database Post Bug Fixes.
scoreboard players operation @e[tag=pf.stand,name=pf.main] pf.uuid = OLD_UUID pf.db
#more to come.
# PF Admin.
tellraw @s [{"text":"\u00A76PF Setup \u00A78: \u00A72Setting you as a PF Admin."}]
tellraw @s [{"text":"\u00A76PF Setup \u00A78: \u00A72If this isn't correct, you can always just do ","color":"dark_green"},{"text":"/trigger pf.pr.admin set <Your UUID>"}]
tag @s add pf.perm.admin
tag @s add pf.perm.main
# PF UUID Profiling.
tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF Setup \u00A78: \u00A72Setting up UUID Profiling..."}]
tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF Setup \u00A78: \u00A72If you have another datapack handling this (must use 'pf.uuid'), you can always just do ","color":"dark_green"},{"text":"/trigger pf.admin.t_u_p"}]
tag @e[tag=pf.stand,name=pf.main] add pf.profiling.true
# PF Starting main loop.
#tellraw @a [{"text":"\u00A76PF \u00A78: \u00A72Starting main loop..."}]
#function pf:pf-main
