# Begin tpdeny file.
# Players with the tag.
execute as @s[tag=pf.tpa.tpato] run tellraw @p[tag=pf.tpaing] [{"text":"\u00A76PF \u00A78: "},{"selector":"@s","color":"green"},{"text":" has denied your TPA request. Sorry.","color":"dark_green"}]
execute as @s[tag=pf.tpa.tpato] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72Sucessfully denied the TPA request from ","color":"dark_green"},{"selector":"@p[tag=pf.tpaing]","color":"green"},{"text":".","color":"dark_green"}]
execute as @s[tag=pf.tpa.tpato] run tellraw @a[tag=pf.perm.admin] [{"text":"PF","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just denied ","color":"dark_green"},{"selector":"@p[tag=pf.tpaing]","color":"green"},{"text":"'s TPA request.","color":"dark_green"}]
execute as @s[tag=pf.tpa.tpato] run scoreboard players reset @s pf.tpdeny
execute as @s[tag=pf.tpa.tpato] run scoreboard players reset @a pf.tpa
execute as @s[tag=pf.tpa.tpato] run scoreboard players reset @e[tag=pf.stand,name=pf.tparequest] pf.db
execute as @s[tag=pf.tpa.tpato] run scoreboard players reset @e[tag=pf.stand,name=pf.tpafind] pf.db
execute as @s[tag=pf.tpa.tpato] run scoreboard players enable @a pf.tpa
execute as @s[tag=pf.tpa.tpato] run scoreboard players enable @a pf.tpaccept
execute as @s[tag=pf.tpa.tpato] run scoreboard players enable @a pf.tpdeny
execute as @s[tag=pf.tpa.tpato] run tag @a remove pf.tpa.tried
execute as @s[tag=pf.tpa.tpato] run tag @a remove pf.tpa.gottpa
execute as @s[tag=pf.tpa.tpato] run tag @a remove pf.tpaing
# Players without the tag.
execute as @s[tag=!pf.tpa.tpato] run tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72TPDeny request failed! Either you don't have any requests or the requester logged off.","color":"dark_green"}]
execute as @s[tag=!pf.tpa.tpato] run tellraw @a[tag=pf.perm.admin] [{"text":"PF","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to deny a TPA request, but either didn't have any requests or the requester logged off.","color":"dark_green"}]
# TPDeny reset.
scoreboard players reset @s pf.tpdeny
scoreboard players enable @a pf.tpdeny
execute as @s[tag=pf.tpa.tpato] run tag @a remove pf.tpa.tpato
