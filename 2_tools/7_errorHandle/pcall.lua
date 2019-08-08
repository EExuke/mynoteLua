#!/usr/bin/lua 

--[[
--  pcall

-- Lua中处理错误，可以使用函数pcall（protected call）来包装需要执行的代码。

-- pcall接收一个函数和要传递给后者的参数，并执行，执行结果：有错误、无错误；返回值true或者或false, errorinfo。

语法格式如下:
	if pcall(function_name, ….) then
	-- 没有错误
	else
	-- -- 一些错误
	end
--]]

-- 简单实例：

pcall(function(i) print(i) end, 33)

pcall(function(i) print(i) error('error..') end, 33)

-- pcall以一种"保护模式"来调用第一个参数，因此pcall可以捕获函数执行中的任何错误。
--
-- 通常在错误发生时，希望落得更多的调试信息，而不只是发生错误的位置。但pcall返回时，它已经销毁了调用桟的部分内容。
