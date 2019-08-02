#!/usr/bin/lua

--可变参数

--Lua 函数可以接受可变数目的参数，和 C 语言类似，在函数参数列表中使用三点 ... 表示函数有可变的参数。

function add(...)
local s = 0
	for i, v in ipairs{...} do   --> {...} 表示一个由所有变长参数构成的数组  
		s = s + v
	end
	return s
end
print(add(3,4,5,6,7))       --->25


--我们可以将可变参数赋值给一个变量。

--例如，我们计算几个数的平均值：

function average(...)
	result = 0
	local arg={...}    --> arg 为一个表，局部变量
	for i,v in ipairs(arg) do
		result = result + v
	end
	print("总共传入 " .. #arg .. " 个数")    --我们也可以通过 select("#",...) 来获取可变参数的数量:
	return result/#arg
end

print("平均值为",average(10,5,3,4,5,6))


--有时候我们可能需要几个固定参数加上可变参数，固定参数必须放在变长参数之前:

function fwrite(fmt, ...)  ---> 固定的参数fmt
	return io.write(string.format(fmt, ...))    
end

fwrite("runoob\n")       --->fmt = "runoob", 没有变长参数。  
fwrite("%d%d\n", 1, 2)   --->fmt = "%d%d", 变长参数为 1 和 2


--通常在遍历变长参数的时候只需要使用 {…}，然而变长参数可能会包含一些 nil，那么就可以用 select 函数来访问变长参数了：select('#', …) 或者 select(n, …)

--    select('#', …) 返回可变参数的长度
--    select(n, …) 用于访问 n 到 select('#',…) 的参数 

--调用select时，必须传入一个固定实参selector(选择开关)和一系列变长参数。
--如果selector为数字n,那么select返回它的第n个可变实参，否则只能为字符串"#",这样select会返回变长参数的总数。例子代码：

do
	function foo(...)  
		for i = 1, select('#', ...) do  -->获取参数总数
			local arg = select(i, ...); -->读取参数
			print("arg", arg);  
		end  
	end  

	foo(1, 2, 3, 4);  
end
