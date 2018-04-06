# Begin fhome file.
# Setters.
execute as @s store result score @s pf.xpos run data get entity @s Pos[0]
execute as @s store result score @s pf.ypos run data get entity @s Pos[1]
execute as @s store result score @s pf.zpos run data get entity @s Pos[2]
# Tellers.
tellraw @s [{"text":"\u00A76PF \u00A78: \u00A72Successfully set your faction's home to X: ","color":"dark_green"},{"score":{"name":"@s","objective":"pf.xpos"},"color":"gold"},{"text":" Y: ","color":"dark_green"},{"score":{"name":"@s","objective":"pf.ypos"},"color":"gold"},{"text":" Z: ","color":"dark_green"},{"score":{"name":"@s","objective":"pf.zpos"},"color":"gold"},{"text":"!","color":"dark_green"}]
tellraw @a[tag=OP] [{"text":"PF","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just set their faction's home!","color":"dark_green"}]
# Resetters.
scoreboard players reset @s pf.fsethome
scoreboard players enable @a pf.fsethome
