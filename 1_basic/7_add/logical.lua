#!/usr/bin/lua

--逻辑运算符
--[[
and  	与
or   	或
not  	非
--]]

a = true
b = true

if ( a and b )
then
	print("a and b - 条件为 true" )
end

if ( a or b )
then
	print("a or b - 条件为 true" )
end

print("---------分割线---------" )

-- 修改 a 和 b 的值
a = false
b = true

if ( a and b )
then
	print("a and b - 条件为 true" )
else
	print("a and b - 条件为 false" )
end

if ( not( a and b) )
then
	print("not( a and b) - 条件为 true" )
else
	print("not( a and b) - 条件为 false" )
end
