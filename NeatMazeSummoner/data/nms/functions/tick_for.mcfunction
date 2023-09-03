execute unless score tpt NMS matches 1.. run return 0
scoreboard players remove tpt NMS 1

scoreboard players remove @e[tag=edge] DSI 1

execute as @e[tag=edge,scores={DSI=0}] at @s run function nms:pe

function nms:tick_for