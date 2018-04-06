# Begin spawnpoint file.
# Setters.
spawnpoint @s ~ ~ ~
# Tellers.
tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72Spawnpoint has been set!","color":"dark_green"}]
tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" \u00A72has just set their spawnpoint!","color":"dark_green"}]
# Resetters.
scoreboard players reset @s pf.spawnpoint
scoreboard players enable @a pf.spawnpoint
