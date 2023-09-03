# input entity: edge

tag @e[tag=vertex,limit=1,sort=nearest] add nowv

execute as @e[tag=nowv,limit=1] store result score pa NMS run function nms:find_v

########## BUG FIX
scoreboard players operation pa NMS = ret NMS
############ FOR BUG

tag @e[tag=vertex,limit=1,sort=nearest,tag=!nowv] add nowvv

execute as @e[tag=nowvv,limit=1] store result score pb NMS run function nms:find_v

########## BUG FIX
scoreboard players operation pb NMS = ret NMS
############ FOR BUG


# tellraw @a [{"text":"* "}, {"selector":"@s"}, {"text":" pa:"}, {"score":{"name":"pa", "objective":"NMS"}}]
# tellraw @a [{"text":"* "}, {"text":" pb:"}, {"score":{"name":"pb", "objective":"NMS"}}]

tag @e remove nowv
tag @e remove nowvv

# the same group
# not connect

execute if score pa NMS = pb NMS if score del NMS matches 1 run kill @s
execute if score pa NMS = pb NMS run return 0


execute as @e[tag=vertex] if score @s DSI = pb NMS run tag @s add tp
scoreboard players operation @e[tag=tp] DSP = pa NMS
tag @e remove tp
tag @s add pass
function nms:pass_edge with storage nms

execute if score del NMS matches 1 run kill @s
