execute unless score xs NMS matches 1.. run return 0

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:[vertex]}


$execute at @s run tp @s ~$(r) ~ ~

execute if score xs NMS matches 2.. at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:[edge, xe]}

$execute at @s run tp @s ~$(r) ~ ~



scoreboard players remove xs NMS 1

function nms:build_x with storage nms