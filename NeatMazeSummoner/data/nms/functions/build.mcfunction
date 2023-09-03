scoreboard objectives remove DSI
scoreboard objectives remove DSP

scoreboard objectives add DSI dummy
scoreboard objectives add DSP dummy

kill @e[tag=vertex]
kill @e[tag=edge]



summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:[cursor]}


scoreboard players operation xs NMS = ixs NMS
execute as @e[tag=cursor] at @s run function nms:build_x with storage nms


scoreboard players operation zs NMS = izs NMS
kill @e[tag=cursor]
execute at @e[tag=vertex] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:[cursor]}
kill @e[tag=vertex]
function nms:build_zv with storage nms

scoreboard players operation zs NMS = izs NMS
kill @e[tag=cursor]
execute at @e[tag=xe] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:[cursor]}
kill @e[tag=xe]
function nms:build_xe with storage nms

kill @e[tag=cursor]


scoreboard players set id DSI 0
execute as @e[tag=vertex,sort=random] run function nms:get_id

scoreboard players set id DSI 0
execute as @e[tag=edge,sort=random] run function nms:get_id

function nms:build_post with storage nms



tag @e[tag=xe] add GXE
tag @e[tag=ze] add GZE
tag @e remove xe
tag @e remove ze


# wait ticks to process