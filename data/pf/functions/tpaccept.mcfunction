# Begin tpaccept file.
# Players who have the tag.
execute as @s[tag=pf.tpa.tpato] run tp @p[tag=pf.tpaing] @s
execute as @s[tag=pf.tpa.tpato] run tellraw @p[tag=pf.tpaing] [{"text":"\u00A76PF \u00A78: \u00A72Successfully teleported you to ","color":"dark_green"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_green"}]
execute as @s[tag=pf.tpa.tpato] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72Successfully teleported ","color":"dark_green"},{"selector":"@p[tag=pf.tpaing]","color":"green"},{"text":" to you!","color":"dark_green"}]
execute as @s[tag=pf.tpa.tpato] run tellraw @a[tag=pf.perm.admin] [{"text":"PF","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"\u00A72Successfully teleported ","color":"dark_green"},{"selector":"@p[tag=pf.tpaing]","color":"green"},{"text":" to ","color":"dark_green"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_green"}]
execute as @s[tag=pf.tpa.tpato] run scoreboard players reset @s pf.tpaccept
execute as @s[tag=pf.tpa.tpato] run scoreboard players reset @a pf.tpa
execute as @s[tag=pf.tpa.tpato] run scoreboard players reset @e[tag=pf.stand,name=pf.tparequest] pf.db
execute as @s[tag=pf.tpa.tpato] run scoreboard players reset @e[tag=pf.stand,name=pf.tpafind] pf.db
execute as @s[tag=pf.tpa.tpato] run scoreboard players enable @a pf.tpa
execute as @s[tag=pf.tpa.tpato] run scoreboard players enable @a pf.tpaccept
execute as @s[tag=pf.tpa.tpato] run scoreboard players enable @a pf.tpdeny
execute as @s[tag=pf.tpa.tpato] run tag @a remove pf.tpa.tried
execute as @s[tag=pf.tpa.tpato] run tag @a remove pf.tpa.gottpa
execute as @s[tag=pf.tpa.tpato] run tag @a remove pf.tpaing
# Players who do not have the tag.
execute as @s[tag=!pf.tpa.tpato] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72TPAccept failed! Either you don't have any requests or the requester logged off.","color":"dark_green"}]
execute as @s[tag=!pf.tpa.tpato] run tellraw @a[tag=pf.perm.admin] [{"text":"PF","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to accept a TPA, but either didn't have any requests or the requester logged off.","color":"dark_green"}]
# TPAccept reset.
scoreboard players reset @s pf.tpaccept
scoreboard players enable @a pf.tpaccept
execute as @s[tag=pf.tpa.tpato] run tag @a remove pf.tpa.tpato
