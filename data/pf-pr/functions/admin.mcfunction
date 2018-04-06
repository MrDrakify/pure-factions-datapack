# Begin Admin Remove function.
# Subtraction checking counter.
scoreboard players add @e[tag=pf.stand,name=pf.adminer] pf.db 1
# Subtraction checking.
execute as @s[tag=!pf.unadmining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1] pf.db = @p[tag=!pf.unadmining.tried] pf.uuid
execute as @s[tag=!pf.unadmining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy2] pf.db = @s pf.pr.admin
execute as @s[tag=!pf.unadmining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1] pf.db -= @e[tag=pf.stand,name=pf.proxy2] pf.db
execute as @s[tag=!pf.unadmining] if entity @e[tag=pf.stand,name=pf.proxy1,scores={pf.db=0}] run tag @s add pf.unadmining
execute as @s[tag=!pf.unadmining] run tag @p[tag=!pf.unadmining.tried] add pf.unadmining.tried
execute as @s[tag=!pf.unadmining] run tag @s add pf.unadmining.noreset
execute as @s[tag=!pf.unadmining] run scoreboard players reset @a[tag=!pf.unadmining.noreset] pf.pr.admin
execute as @s[tag=!pf.unadmining] run tag @s remove pf.unadmining.noreset
scoreboard players set @e[tag=pf.stand,name=pf.proxy1] pf.db 0
scoreboard players set @e[tag=pf.stand,name=pf.proxy2] pf.db 0
# Tagging.
execute as @s[tag=pf.unadmining] run tag @p[tag=!pf.unadmining.tried] remove pf.perm.admin
execute as @s[tag=pf.unadmining] run tellraw @p[tag=!pf.unadmining.tried] [{"text":"\u00A76PF \u00A78: \u00A72Sorry... "},{"selector":"@s","color":"green"},{"text":" has just removed your Pure Factions Admin access...","color":"dark_green"}]
execute as @s[tag=pf.unadmining] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72You have just successfully removed ","color":"dark_green"},{"selector":"@p[tag=!pf.unadmining.tried]","color":"green"},{"text":"'s Pure Factions Admin access!","color":"dark_green"}]
execute as @s[tag=pf.unadmining] run tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" \u00A72has just successfully removed ","color":"dark_green"},{"selector":"@p[tag=!pf.unadmining.tried]","color":"green"},{"text":"'s Pure Factions Admin access! Uh oh...","color":"dark_green"}]
execute as @s[tag=pf.unadmining] run scoreboard players reset @s pf.pr.admin
execute as @s[tag=pf.unadmining] run scoreboard players enable @a pf.pr.admin
execute as @s[tag=pf.unadmining] run tag @a remove pf.unadmining.tried
execute as @s[tag=pf.unadmining] run tag @a remove pf.unadmining
# Resetting.
execute if entity @e[tag=pf.stand,name=pf.adminer,scores={pf.db=200..}] at @s run function pf-msges:uuid_not_found
