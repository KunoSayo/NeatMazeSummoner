# return the id in the DS
# input: @s (the entity to query)

tag @s remove DSNP

# tellraw @a [{"text":"* "}, {"selector":"@s"}, {"text":" id:"}, {"score":{"name":"@s", "objective":"DSI"}}]
# tellraw @a [{"text":"* "}, {"selector":"@s"}, {"text":" pid:"}, {"score":{"name":"@s", "objective":"DSP"}}]

# if no parent then return me.
# for bug...
execute unless score @s DSP matches 1.. run scoreboard players operation ret NMS = @s DSI
execute unless score @s DSP matches 1.. run return run scoreboard players get @s DSI



# WE HAVE PARENT

scoreboard players operation dsnp NMS = @s DSP
execute as @e[tag=vertex] if score @s DSI = dsnp NMS run tag @s add DSNP


execute store result score @s DSP as @e[tag=DSNP] run function nms:find_v
############################################## for mojang bug
scoreboard players operation @s DSP = ret NMS
#######################


scoreboard players operation ret NMS = @s DSP
return run scoreboard players get @s DSP