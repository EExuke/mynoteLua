#!/usr/bin/lua 

--[[
-- __tostring 元方法
--
-- __tostring 元方法用于修改表的输出行为。以下实例我们自定义了表的输出内容：
--]]

mytable = setmetatable({ 10, 20, 30 }, {
	__tostring = function(mytable)
		sum = 0
		for k, v in pairs(mytable) do
			sum = sum + v
		end
		return "表所有元素的和为 " .. sum
	end
})
print(mytable)
