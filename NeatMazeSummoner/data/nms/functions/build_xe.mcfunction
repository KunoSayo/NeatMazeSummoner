execute unless score zs NMS matches 1.. run return 0

execute as @e[tag=cursor] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:[edge, xe]}


$execute as @e[tag=cursor] at @s run tp @s ~ ~ ~$(r)
# $execute if score zs NMS matches 2.. as @e[tag=cursor] at @s run fill ~-$(eo) ~ ~-$(eo) ~$(eo) ~ ~$(eo) stone
$execute as @e[tag=cursor] at @s run tp @s ~ ~ ~$(r)



scoreboard players remove zs NMS 1

function nms:build_xe with storage nms