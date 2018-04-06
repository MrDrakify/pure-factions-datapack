# Begin tpa fail file.
# Tellers.
tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72Sorry, but the TPA Request to ","color":"dark_green"},{"selector":"@p[tag=pf.tpa.tpato]","color":"green"},{"text":" timed out after fifteen seconds...","color":"dark_green"}]
tellraw @p[tag=TPAto] [{"text":"\u00A76PF \u00A78: \u00A72TPA request from ","color":"dark_green"},{"selector":"@s","color":"green"},{"text":" timed out after ten seconds...","color":"dark_green"}]
tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" wanted to TPA to ","color":"dark_green"},{"selector":"@p[tag=pf.tpa.tpato]","color":"green"},{"text":", but the request timed out after fifteen seconds...","color":"dark_green"}]
# Resetters.
tag @a remove pf.tpaing
tag @a remove pf.tpa.tpato
tag @a remove pf.tpa.tried
tag @a remove pf.tpa.gottpa
scoreboard players reset @a pf.tpa
scoreboard players enable @a pf.tpa
scoreboard players enable @a pf.tpaccept
scoreboard players reset @e[tag=pf.stand,name=pf.tparequest] pf.db
