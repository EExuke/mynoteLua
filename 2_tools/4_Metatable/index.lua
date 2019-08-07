#!/usr/bin/lua

--[[
-- __index 元方法
--
-- 这是 metatable 最常用的键。
--
-- 当你通过键来访问 table 的时候，如果这个键没有值，那么Lua就会寻找该table的metatable（假定有metatable）中的__index 键。
-- 如果__index包含一个表格，Lua会在表格中查找相应的键。 
--]]

-- 如果__index包含一个函数的话，Lua就会调用那个函数，table和键会作为参数传递给函数。
-- __index 元方法查看表中元素是否存在，如果不存在，返回结果为 nil；如果存在则由 __index 返回结果。

mytable = setmetatable({key1 = "value1"}, {
	__index = function(mytable, key)
		if key == "key2" then
			return "metatablevalue"
		else
			return nil
		end
	end
})

print(mytable.key1,mytable.key2)

--[[
--mytable 表赋值为 {key1 = "value1"}。
--
--mytable 设置了元表，元方法为 __index。
--
--在mytable表中查找 key1，如果找到，返回该元素，找不到则继续。
--
--在mytable表中查找 key2，如果找到，返回 metatablevalue，找不到则继续。
--
--判断元表有没有__index方法，如果__index方法是一个函数，则调用该函数。
--
--元方法中查看是否传入 "key2" 键的参数（mytable.key2已设置），如果传入 "key2" 参数返回 "metatablevalue"，否则返回 mytable 对应的键值。
--]]

-- 我们可以将以上代码简单写成：
mytable = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable.key1,mytable.key2)


