## Begin pf Main function.
## Taggers.
#none as of now.
## Block handler bug flushing.
scoreboard players set @a[scores={pf.currblock=..-1},tag=pf.perm.main] pf.currblock 0
scoreboard players set @a[tag=!pf.cbflushed,tag=pf.perm.main] pf.currblock 0
tag @a[scores={pf.currblock=0},tag=!pf.cbflushed,tag=pf.perm.main] add cbflushed
## Pointers.
#  Main Commands.
execute as @a[scores={pf.fhome=1..},tag=pf.perm.main] at @s run function pf:fhome
execute as @a[scores={pf.fhome=1..},tag=!pf.perm.main] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.fsethome=1..},tag=pf.perm.main] at @s run function pf:fsethome
execute as @a[scores={pf.fsethome=1..},tag=!pf.perm.main] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.seealluuids=1..},tag=pf.perm.main] at @s run function pf:see_uuids
execute as @a[scores={pf.seealluuids=1..},tag=!pf.perm.main] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.spawnpoint=1..},tag=pf.perm.main] at @s run function pf:spawnpoint
execute as @a[scores={pf.spawnpoint=1..},tag=!pf.perm.main] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.tpa=1..},tag=pf.perm.main] at @s run function pf:tpa
execute as @a[scores={pf.tpa=1..},tag=!pf.perm.main] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.tpaccept=1..},tag=pf.perm.main] at @s run function pf:tpaccept
execute as @a[scores={pf.tpaccept=1..},tag=!pf.perm.main] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.tpdeny=1..},tag=pf.perm.main] at @s run function pf:tpdeny
execute as @a[scores={pf.tpdeny=1..},tag=!pf.perm.main] at @s run function pf-msges:ins_perms
#  Perm Add Commands.
execute as @a[scores={pf.pa.admin=1..},tag=pf.perm.admin] at @s run function pf-pa:admin
execute as @a[scores={pf.pa.admin=1..},tag=!pf.perm.admin] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.pa.edit_perms=1..},tag=pf.perm.edit_perms] at @s run function pf-pa:edit_perms
execute as @a[scores={pf.pa.edit_perms=1..},tag=!pf.perm.edit_perms] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.pa.main=1..},tag=pf.perm.edit_perms] at @s run function pf-pa:main
execute as @a[scores={pf.pa.main=1..},tag=!pf.perm.edit_perms] at @s run function pf-msges:ins_perms
#  Perm Rem Commands.
execute as @a[scores={pf.pr.admin=1..},tag=pf.perm.admin] at @s run function pf-pr:admin
execute as @a[scores={pf.pr.admin=1..},tag=!pf.perm.admin] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.pr.edit_perms=1..},tag=pf.perm.edit_perms] at @s run function pf-pr:edit_perms
execute as @a[scores={pf.pr.edit_perms=1..},tag=!pf.perm.edit_perms] at @s run function pf-msges:ins_perms
execute as @a[scores={pf.pr.main=1..},tag=pf.perm.edit_perms] at @s run function pf-pr:main
execute as @a[scores={pf.pr.main=1..},tag=!pf.perm.edit_perms] at @s run function pf-msges:ins_perms
## UUID Profiling.
execute if entity @e[tag=pf.stand,name=pf.main,tag=pf.profiling.true] as @p[tag=!pf.uuided.tagged] at @s run function pf:uuid_profiling
execute if entity @e[tag=pf.stand,name=pf.main,tag=pf.profiling.true] as @p[scores={pf.uuid=0}] at @s run function pf:uuid_profiling
## Loop.
#function pf:pf-main
