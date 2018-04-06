# Begin fhome file.
# Disabled.
tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72This command is disabled as of right now..."}]
tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" has just tried to trigger a disabled command...","color":"dark_green"}]
# Resetters.
scoreboard players reset @s pf.fhome
scoreboard players enable @a pf.fhome
