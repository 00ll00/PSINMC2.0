#as player
execute if score $tools.rev PS.mem matches 0 run data modify block 29999999 6 3006 Text1 set value '""'
execute if score $tools.rev PS.mem matches 1 run data modify block 29999999 6 3006 Text1 set value '{"translate":"ps.actionbar.rev","color":"aqua"}'
data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true},{"nbt": "Text1","block": "29999999 6 3006","interpret": true}," "]'
