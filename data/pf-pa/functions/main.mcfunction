# Begin pf Main Add function.
# Subtraction checking counter.
scoreboard players add @e[tag=pf.stand,name=pf.mainer] pf.db 1
# Subtraction checking.
execute as @s[tag=!pf.maining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1] pf.db = @p[tag=!pf.maining.tried] pf.uuid
execute as @s[tag=!pf.maining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy2] pf.db = @s pf.pa.main
execute as @s[tag=!pf.maining] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1] pf.db -= @e[tag=pf.stand,name=pf.proxy2] pf.db
execute as @s[tag=!pf.maining] if entity @e[tag=pf.stand,name=pf.proxy1,scores={pf.db=0}] run tag @s add pf.maining
execute as @s[tag=!pf.maining] run tag @p[tag=!pf.maining.tried] add pf.maining.tried
execute as @s[tag=!pf.maining] run tag @s add pf.maining.noreset
execute as @s[tag=!pf.maining] run scoreboard players reset @a[tag=!pf.maining.noreset] pf.pa.main
execute as @s[tag=!pf.maining] run tag @s remove pf.maining.noreset
scoreboard players set @e[tag=pf.stand,name=pf.proxy1] pf.db 0
scoreboard players set @e[tag=pf.stand,name=pf.proxy2] pf.db 0
# Tagging.
execute as @s[tag=pf.maining] run tellraw @p[tag=!pf.maining.tried] [{"text":"\u00A76PF \u00A78: \u00A72Congrats! "},{"selector":"@s","color":"green"},{"text":" has just made you a Pure Factions User! No cheating now! ;)","color":"dark_green"}]
execute as @s[tag=pf.maining] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72You have just successfully made ","color":"dark_green"},{"selector":"@p[tag=!pf.maining.tried]","color":"green"},{"text":" a Pure Factions User! Be careful!","color":"dark_green"}]
execute as @s[tag=pf.maining] run tellraw @a[tag=pf.perm.pf_main] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" \u00A72has just successfully made ","color":"dark_green"},{"selector":"@p[tag=!pf.maining.tried]","color":"green"},{"text":" a Pure Factions User! Watch out!","color":"dark_green"}]
execute as @s[tag=pf.maining] run tag @p[tag=!pf.maining.tried] add pf.perm.main
execute as @s[tag=pf.maining] run scoreboard players reset @s pf.pa.main
execute as @s[tag=pf.maining] run scoreboard players enable @a pf.pa.main
execute as @s[tag=pf.maining] run tag @a remove pf.maining.tried
execute as @s[tag=pf.maining] run tag @a remove pf.maining
# Resetting.
execute if entity @e[tag=pf.stand,name=pf.mainer,scores={pf.db=200..}] at @s run function pf-msges:uuid_not_found
