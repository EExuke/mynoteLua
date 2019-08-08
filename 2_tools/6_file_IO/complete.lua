#!/usr/bin/lua 

--[[
-- 完全模式
--
-- 通常我们需要在同一时间处理多个文件。我们需要使用 file:function_name 来代替 io.function_name 方法。
-- 以下实例演示了如何同时处理同一个文件:
--]]

-- 以只读方式打开文件
file = io.open("test.lua", "r")

-- 输出文件第一行
print(file:read())

-- 关闭打开的文件
file:close()

-- 以附加的方式打开只写文件
file = io.open("test.lua", "a")

-- 在文件最后一行添加 Lua 注释
file:write("--test")

-- 关闭打开的文件
file:close()

-- read 的参数与简单模式一致。
