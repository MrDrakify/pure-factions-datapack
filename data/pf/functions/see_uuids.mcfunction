# Begin see all online uuids.
# Players Online.
scoreboard players set @e[tag=pf.stand,name=pf.playersonline] pf.db 0
execute as @a at @s run scoreboard players add @e[tag=pf.stand,name=pf.playersonline] pf.db 1
# Tellers and taggers.
execute as @p[tag=!pf.seeuuid.done] at @s run tellraw @a[scores={pf.seealluuids=1..}] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":"'s UUID is ","color":"dark_green"},{"score":{"name":"@s","objective":"pf.uuid","color":"gold"}}]
execute as @p[tag=!pf.seeuuid.done] at @s run scoreboard players add @e[tag=pf.stand,name=pf.proxy3] pf.db 1
execute as @p[tag=!pf.seeuuid.done] at @s run tag @s add pf.seeuuid.done
# Subtraction Checking.
scoreboard players operation @e[tag=pf.stand,name=pf.playersonline] pf.db -= @e[tag=pf.stand,name=pf.proxy3] pf.db
execute if entity @e[tag=pf.stand,name=pf.playersonline,scores={pf.db=0}] run tag @s add pf.seealluuids.done
# Done.
execute as @s[tag=pf.seealluuids.done] at @s run scoreboard players reset @e[tag=pf.stand,name=pf.playersonline] pf.db
execute as @s[tag=pf.seealluuids.done] at @s run scoreboard players reset @e[tag=pf.stand,name=pf.proxy3] pf.db
execute as @s[tag=pf.seealluuids.done] at @s run tag @a remove pf.seeuuid.done
execute as @s[tag=pf.seealluuids.done] at @s run scoreboard players reset @s pf.seealluuids
execute as @s[tag=pf.seealluuids.done] at @s run scoreboard players enable @a pf.seealluuids
execute as @s[tag=pf.seealluuids.done] at @s run tag @s remove pf.seealluuids.done
