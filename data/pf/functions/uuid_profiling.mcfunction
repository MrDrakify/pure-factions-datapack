# Begin UUID Profiling.
# Tagging and outputting.
execute if entity @s[tag=!pf.zeroed] run scoreboard players set @s pf.uuid 0
execute as @e[tag=pf.stand,name=pf.main] run scoreboard players add @s pf.uuid 1
execute if entity @e[tag=pf.stand,name=pf.main] run scoreboard players operation @s pf.uuid = @e[tag=pf.stand,name=pf.main] pf.uuid
execute if entity @e[tag=pf.stand,name=pf.main] run tellraw @a[tag=pf.perm.admin] [{"text":"\u00A76PF UUID Profiler \u00A78: \u00A72I just tagged "},{"selector":"@s","color":"green"},{"text":" \u00A72with a 'pf.uuid' of ","color":"dark_green"},{"score":{"name":"@s","objective":"pf.uuid"},"color":"gold"}]
execute if entity @s[tag=!pf.zeroed] run tag @s add pf.zeroed
# Tagging.
execute if entity @e[tag=pf.stand,name=pf.main] run tag @s add pf.uuided.tagged
