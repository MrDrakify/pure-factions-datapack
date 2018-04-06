# Begin tpa file.
# Timer counter.
execute as @s[tag=!pf.tpaing] run scoreboard players add @e[tag=pf.stand,name=pf.tpafind] pf.db 1
# Math and figuring out which player has the correct UUID number.
execute as @s[tag=!pf.tpaing] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1,type=armor_stand] pf.db = @p[tag=!pf.tpa.tried] pf.uuid
execute as @s[tag=!pf.tpaing] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy2,type=armor_stand] pf.db = @s pf.tpa
execute as @s[tag=!pf.tpaing] run scoreboard players operation @e[tag=pf.stand,name=pf.proxy1,type=armor_stand] pf.db -= @e[tag=pf.stand,name=pf.proxy2,type=armor_stand] pf.db
execute as @s[tag=!pf.tpaing] if entity @e[tag=pf.stand,name=pf.proxy1,type=armor_stand,scores={pf.db=0}] run tag @s add pf.tpaing
execute as @s[tag=!pf.tpaing] run tag @p[tag=!pf.tpa.tried] add pf.tpa.tried
execute as @s[tag=!pf.tpaing] run tag @s add pf.tpa.noreset
execute as @s[tag=!pf.tpaing] run scoreboard players reset @a[tag=!pf.tpa.noreset] pf.tpa
execute as @s[tag=!pf.tpaing] run tag @s remove pf.tpa.noreset
scoreboard players set @e[tag=pf.stand,name=pf.proxy1,type=armor_stand] pf.db 0
scoreboard players set @e[tag=pf.stand,name=pf.proxy2,type=armor_stand] pf.db 0
# Tags, tells, and resets old timer then starts a new one.
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] run tag @p[tag=!pf.tpa.tried] add pf.tpa.tpato
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] at @p[tag=pf.tpa.tpato] run playsound minecraft:block.wood_button.click_on master @p[tag=pf.tpa.tpato]
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] at @s run playsound minecraft:block.wood_button.click_on master @s
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] run tellraw @p[tag=pf.tpa.tpato] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" is wanting to teleport to you.","color":"dark_green"}]
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] run tellraw @p[tag=pf.tpa.tpato] [{"text":"[Accept]","color":"green","hoverEvent":{"action":"show_text","value":"\u00A7eClick to \u00A7aaccept\u00A78!"},"clickEvent":{"action":"run_command","value":"/trigger pf.tpaccept"}},{"text":" "},{"text":"[Deny]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A7eClick to \u00A7cdeny\u00A78!"},"clickEvent":{"action":"run_command","value":"/trigger pf.tpdeny"}}]
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72The TPA request has been sent to ","color":"dark_green"},{"selector":"@p[tag=pf.tpa.tpato]","color":"green"},{"text":".","color":"dark_green"}]
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] run tellraw @a[tag=pf.perm.admin] [{"text":"PF","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" is wanting to TPA to ","color":"dark_green"},{"selector":"@p[tag=pf.tpa.tpato]","color":"green"},{"text":".","color":"dark_green"}]
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] run scoreboard players reset @e[tag=pf.stand,name=pf.tpafind] pf.db
execute as @s[tag=pf.tpaing,tag=!pf.tpa.gottpa] run tag @s add pf.tpa.gottpa
execute as @s[tag=pf.tpaing,tag=pf.tpa.gottpa] run scoreboard players add @e[tag=pf.stand,name=pf.tparequest] pf.db 1
# Resets
execute if entity @e[tag=pf.stand,name=pf.tpafind,scores={pf.db=60..}] run function pf-msges:uuid_not_found
execute if entity @e[tag=pf.stand,name=pf.tparequest,scores={pf.db=300..}] run function pf-msges:tpa_fail
