# Begin UUID Not Found.
# Tellers.
tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72Sorry, but that UUID is either not online or doesn't exist...","color":"dark_green"}]
tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" has just tried to use a UUID that either wasn't online or did not exist...","color":"dark_green"}]
# Resetters.
scoreboard players reset @s pf.tpa
scoreboard players enable @a pf.tpa

scoreboard players reset @s pf.pa.admin
scoreboard players enable @a pf.pa.admin
scoreboard players reset @s pf.pa.edit_perms
scoreboard players enable @a pf.pa.edit_perms
scoreboard players reset @s pf.pa.pf_main
scoreboard players enable @a pf.pa.pf_main

scoreboard players reset @s pf.pr.admin
scoreboard players enable @a pf.pr.admin
scoreboard players reset @s pf.pr.edit_perms
scoreboard players enable @a pf.pr.edit_perms
scoreboard players reset @s pf.pr.pf_main
scoreboard players enable @a pf.pr.pf_main

scoreboard players reset @e[tag=pf.stand,name=pf.adminer] pf.db

scoreboard players reset @e[tag=pf.stand,name=pf.tparequest] pf.db
scoreboard players reset @e[tag=pf.stand,name=pf.tpafind] pf.db

tag @a remove pf.tpa.gottpa
tag @a remove pf.tpa.tried
tag @a remove pf.tpa.tpato
tag @a remove pf.tpaing
