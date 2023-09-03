# NeatMazeSummoner

## APIs
```mcfunction
function nms:init  初始化迷宫并使用默认参数
function nms:init_slot  初始化迷宫并使用默认参数
function nms:init_large  初始化迷宫并使用默认参数
function nms:clean  清理实体
function nms:build 在执行位置生成迷宫（往x+，z+延申）
function nms:finish 将已有迷宫实体转换成完成状态（去掉tags）
```

## Tags
* edge 会被处理的边
* vertex 会被处理的点
* xe 会被处理的x轴的边
* ze会被处理的z轴的边
* GV 点
* GV 边
* GXE X边
* GZE Z边
* pass 该边应有路
* cursor 生成使用的辅助tags
* DSNP 辅助tag
* ...其他辅助tag


## Scoreboard && storage
### NMS scoreboard
#### Inputs
* ixs 在 x 轴上有多长
* izs 在 z 轴上有多长
* itpt 每个 tick 处理多少个边
* del 如果为 1 则在处理完边之后删除对应实体
#### Read only
* left_edge 等待处理的边的实体数量
### nms storage
* vr 点的半径
* vo 应该被设为`vr - 1`
* er 边的半径
* eo 应该被设为`er - 1`
* r  半径，应被设置为`vr + er - 1`