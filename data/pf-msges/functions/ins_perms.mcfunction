# Begin insufficient permissions file.
# Tellers.
tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72Sorry, but you don't have the correct permissions to do this...","color":"dark_green"}]
tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to run a command that they don't have access to.","color":"dark_green"}]
# Resetters.
scoreboard players reset @s pf.fhome
scoreboard players enable @a pf.fhome
scoreboard players reset @s pf.fsethome
scoreboard players enable @a pf.fsethome
scoreboard players reset @s pf.seealluuids
scoreboard players enable @a pf.seealluuids
scoreboard players reset @s pf.spawnpoint
scoreboard players enable @a pf.spawnpoint

scoreboard players reset @s pf.admin.t_u_p
scoreboard players enable @a pf.admin.t_u_p

scoreboard players reset @s pf.pa.admin
scoreboard players enable @a pf.pa.admin
scoreboard players reset @s pf.pa.edit_perms
scoreboard players enable @a pf.pa.edit_perms
scoreboard players reset @s pf.pa.main
scoreboard players enable @a pf.pa.main

scoreboard players reset @s pf.pr.admin
scoreboard players enable @a pf.pr.admin
scoreboard players reset @s pf.pr.edit_perms
scoreboard players enable @a pf.pr.edit_perms
scoreboard players reset @s pf.pr.main
scoreboard players enable @a pf.pr.main
