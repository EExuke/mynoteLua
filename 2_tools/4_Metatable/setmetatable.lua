#!/usr/bin/lua

--以下实例演示了如何对指定的表设置元表：
mytable = {}                          -- 普通表
mymetatable = {}                      -- 元表
setmetatable(mytable,mymetatable)     -- 把 mymetatable 设为 mytable 的元表 

--以上代码也可以直接写成一行：
-- mytable = setmetatable({},{})

--以下为返回对象元表：
getmetatable(mytable)                 -- 这回返回mymetatable
