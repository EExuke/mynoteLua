#!/usr/bin/lua

--while 循环
--
--while(condition)
--do
--   statements
--end
--
a=10
while( a < 20 )
do
	print("a 的值为:", a)
	a = a+1
end

---------------------------------------------------------
--for 循环
--Lua 编程语言中 for语句有两大类：
--
--    数值for循环：
-- for var=exp1,exp2,exp3 do
--     <执行体>
-- end
--    var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次 "执行体"。exp3 是可选的，如果不指定，默认为1。
for i=10,1,-1 do
	    print(i)
end

--for的三个表达式在循环开始前一次性求值，以后不再进行求值。比如下面的f(x)只会在循环开始前执行一次，其结果用在后面的循环中。
function f(x)
	print("function")
	return x*2
end
for i=1,f(5) do 
	print(i)
end

--
--    泛型for循环：
--泛型 for 循环通过一个迭代器函数来遍历所有值，类似 java 中的 foreach 语句。
--
--Lua 编程语言中泛型 for 循环语法格式:
--
-- 打印数组a的所有值
a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i, v)
end
-- i是数组索引值，v是对应索引的数组元素值。ipairs是Lua提供的一个迭代器函数，用来迭代数组。
--
days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}  
for i,v in ipairs(days) do
	print(i,v)
end
--
---------------------------------------------------------------------------------------------

-- repeat...until 循环
--先执行再判断
--循环语法格式:
-- repeat
--    statements
-- until( condition )
--
--[ 变量定义 --]
a = 10
--[ 执行循环 --]
repeat
	print("a的值为:", a)
	a = a + 1
until( a > 15 )
