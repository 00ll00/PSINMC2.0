#as focused component
scoreboard players operation $ctrl.clrpk.r PS.mem = $ctrl.sld.s PS.mem
scoreboard players operation $ctrl.clrpk.clr PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.bc] PS.tools.clr
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.r = $ctrl.clrpk.r PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.r = $ctrl.clrpk.r PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] run function ps:control/components/clrpicker/refresh_c
execute if score $ctrl.clrpk.clr PS.mem matches 1 as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] run function ps:control/components/clrpicker/refresh_c
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.sld.s,tag=!PS.ctrl.clrpk.sr,tag=!PS.ctrl.clrpk.sa] PS.color.r = $ctrl.clrpk.r PS.mem
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.sld.s,tag=!PS.ctrl.clrpk.sr,tag=!PS.ctrl.clrpk.sa] run function ps:color/getitem/call

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,nbt={Glowing:1b}] run data modify entity @s Glowing set value 0b
data modify entity @s Glowing set value 1b