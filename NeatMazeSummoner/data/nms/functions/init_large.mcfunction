# function nms:clean

scoreboard objectives add NMS dummy

data modify storage nms vr set value 1
data modify storage nms vo set value 0
data modify storage nms er set value 1
data modify storage nms eo set value 0
data modify storage nms r set value 1

scoreboard players set ixs NMS 50
scoreboard players set izs NMS 50

scoreboard players set itpt NMS 5
scoreboard players set del NMS 1
