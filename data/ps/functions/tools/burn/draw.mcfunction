#as player
scoreboard players set #tools.inter PS.mem 0
function ps:tools/com/size
scoreboard players set $color.r PS.mem 0
scoreboard players set $color.g PS.mem 0
scoreboard players set $color.b PS.mem 0
scoreboard players operation $color.a PS.mem = @s PS.color.a
execute as @e[tag=PS.tools.stroke] at @s if block ~ ~ ~ #ps:colored run function ps:tools/burn/stroke
kill @e[tag=PS.tools.stroke]