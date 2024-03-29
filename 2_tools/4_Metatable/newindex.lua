#!/usr/bin/lua 

--[[
-- __newindex 元方法
--
-- __newindex 元方法用来对表更新，__index则用来对表访问 。
--
-- 当你给表的一个缺少的索引赋值，解释器就会查找 __newindex 元方法：如果存在则调用这个函数而不进行赋值操作。
--
-- 以下实例演示了 __newindex 元方法的应用：
--]]

mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey, mymetatable.newkey)

mytable.key1 = "新值1"
print(mytable.key1, mymetatable.key1)

--以上实例中表设置了元方法 __newindex，在对新索引键（newkey）赋值时（mytable.newkey = "新值2"），会调用元方法，而不进行赋值。
--而如果对已存在的索引键（key1），则会进行赋值，而不调用元方法 __newindex。

--以下实例使用了 rawset 函数来更新表：
mytable = setmetatable({key1 = "value1"}, {
	__newindex = function(mytable, key, value)
		rawset(mytable, key, "\""..value.."\"")

	end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1,mytable.key2)
