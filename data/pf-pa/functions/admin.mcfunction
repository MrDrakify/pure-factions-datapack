# Begin Admin Add function.
# Subtraction checking counter.
scoreboard players add @e[tag=pf.stand,name=pf.adminer] pf.db 1
# Subtraction checking.
execute as @s[tag=!pf.admining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1] pf.db = @p[tag=!pf.admining.tried] pf.uuid
execute as @s[tag=!pf.admining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy2] pf.db = @s pf.pa.admin
execute as @s[tag=!pf.admining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1] pf.db -= @e[tag=pf.stand,name=pf.proxy2] pf.db
execute as @s[tag=!pf.admining] if entity @e[tag=pf.stand,name=pf.proxy1,scores={pf.db=0}] run tag @s add pf.admining
execute as @s[tag=!pf.admining] run tag @p[tag=!pf.admining.tried] add pf.admining.tried
execute as @s[tag=!pf.admining] run tag @s add pf.admining.noreset
execute as @s[tag=!pf.admining] run scoreboard players reset @a[tag=!pf.admining.noreset] pf.pa.admin
execute as @s[tag=!pf.admining] run tag @s remove pf.admining.noreset
scoreboard players set @e[tag=pf.stand,name=pf.proxy1] pf.db 0
scoreboard players set @e[tag=pf.stand,name=pf.proxy2] pf.db 0
# Tagging.
execute as @s[tag=pf.admining] run tellraw @p[tag=!pf.admining.tried] [{"text":"\u00A76PF \u00A78: \u00A72Congrats! "},{"selector":"@s","color":"green"},{"text":" has just made you a Pure Factions Admin! Use it wisely! :D","color":"dark_green"}]
execute as @s[tag=pf.admining] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72You have just successfully made ","color":"dark_green"},{"selector":"@p[tag=!pf.admining.tried]","color":"green"},{"text":" a Pure Factions Admin! Be careful!","color":"dark_green"}]
execute as @s[tag=pf.admining] run tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" \u00A72has just successfully made ","color":"dark_green"},{"selector":"@p[tag=!pf.admining.tried]","color":"green"},{"text":" a Pure Factions Admin! Watch out!","color":"dark_green"}]
execute as @s[tag=pf.admining] run tag @p[tag=!pf.admining.tried] add pf.perm.admin
execute as @s[tag=pf.admining] run scoreboard players reset @s pf.pa.admin
execute as @s[tag=pf.admining] run scoreboard players enable @a pf.pa.admin
execute as @s[tag=pf.admining] run tag @a remove pf.admining.tried
execute as @s[tag=pf.admining] run tag @a remove pf.admining
# Resetting.
execute if entity @e[tag=pf.stand,name=pf.adminer,scores={pf.db=200..}] at @s run function pf-msges:uuid_not_found
