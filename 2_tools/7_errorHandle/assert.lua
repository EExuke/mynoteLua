#!/usr/bin/lua 

local function add(a,b)
	assert(type(a) == "number", "a 不是一个数字")
	assert(type(b) == "number", "b 不是一个数字")
	return a+b
end

add(10)
--error(message, 1)

--实例中assert首先检查第一个参数，若没问题，assert不做任何事情；否则，assert以第二个参数作为错误信息抛出。
--

--[[
-- error函数
--
-- 语法格式：
--
-- 	 error (message, [level])
--
-- 功能：终止正在执行的函数，并返回message的内容作为错误信息(error函数永远都不会返回)
--
-- 通常情况下，error会附加一些错误位置的信息到message头部。
--
-- Level参数指示获得错误的位置:
--     Level=1[默认]：为调用error位置(文件+行号)
--     Level=2：指出哪个调用error的函数的函数
--     Level=0:不添加错误位置信息
--]]
