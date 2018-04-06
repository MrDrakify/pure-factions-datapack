# Begin pf Main Remove function.
# Subtraction checking counter.
scoreboard players add @e[tag=pf.stand,name=pf.mainer] pf.db 1
# Subtraction checking.
execute as @s[tag=!pf.unmaining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1] pf.db = @p[tag=!pf.unmaining.tried] pf.uuid
execute as @s[tag=!pf.unmaining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy2] pf.db = @s pf.pr.main
execute as @s[tag=!pf.unmaining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1] pf.db -= @e[tag=pf.stand,name=pf.proxy2] pf.db
execute as @s[tag=!pf.unmaining] if entity @e[tag=pf.stand,name=pf.proxy1,scores={pf.db=0}] run tag @s add pf.unmaining
execute as @s[tag=!pf.unmaining] run tag @p[tag=!pf.unmaining.tried] add pf.unmaining.tried
execute as @s[tag=!pf.unmaining] run tag @s add pf.unmaining.noreset
execute as @s[tag=!pf.unmaining] run scoreboard players reset @a[tag=!pf.unmaining.noreset] pf.pr.main
execute as @s[tag=!pf.unmaining] run tag @s remove pf.unmaining.noreset
scoreboard players set @e[tag=pf.stand,name=pf.proxy1] pf.db 0
scoreboard players set @e[tag=pf.stand,name=pf.proxy2] pf.db 0
# Tagging.
execute as @s[tag=pf.unmaining] run tag @p[tag=!pf.unmaining.tried] remove pf.perm.main
execute as @s[tag=pf.unmaining] run tellraw @p[tag=!pf.unmaining.tried] [{"text":"\u00A76PF \u00A78: \u00A72Sorry... "},{"selector":"@s","color":"green"},{"text":" has just removed your Pure Factions User access...","color":"dark_green"}]
execute as @s[tag=pf.unmaining] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72You have just successfully removed ","color":"dark_green"},{"selector":"@p[tag=!pf.unmaining.tried]","color":"green"},{"text":"'s Pure Factions User access!","color":"dark_green"}]
execute as @s[tag=pf.unmaining] run tellraw @a[tag=pf.perm.pf_main] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" \u00A72has just successfully removed ","color":"dark_green"},{"selector":"@p[tag=!pf.unmaining.tried]","color":"green"},{"text":"'s Pure Factions User access! Uh oh...","color":"dark_green"}]
execute as @s[tag=pf.unmaining] run scoreboard players reset @s pf.pr.main
execute as @s[tag=pf.unmaining] run scoreboard players enable @a pf.pr.main
execute as @s[tag=pf.unmaining] run tag @a remove pf.unmaining.tried
execute as @s[tag=pf.unmaining] run tag @a remove pf.unmaining
# Resetting.
execute if entity @e[tag=pf.stand,name=pf.mainer,scores={pf.db=200..}] at @s run function pf-msges:uuid_not_found
