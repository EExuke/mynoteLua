#!/usr/bin/lua

--[[
--无状态的迭代器

  无状态的迭代器是指不保留任何状态的迭代器，因此在循环中我们可以利用无状态迭代器避免创建闭包花费额外的代价。

  每一次迭代，迭代函数都是用两个变量（状态常量和控制变量）的值作为参数被调用，一个无状态的迭代器只利用这两个值可以获取下一个元素。

  这种无状态迭代器的典型的简单的例子是 ipairs，它遍历数组的每一个元素。
--]]
--
--以下实例我们使用了一个简单的函数来实现迭代器，实现 数字 n 的平方：

function square(iteratorMaxCount,currentNumber)
	if currentNumber<iteratorMaxCount
	then
		currentNumber = currentNumber+1
	return currentNumber, currentNumber*currentNumber
	end
end

for i,n in square,3,0
do
	print(i,n)
end


--迭代的状态包括被遍历的表（循环过程中不会改变的状态常量）和当前的索引下标（控制变量），ipairs 和迭代函数都很简单，
--我们在 Lua 中可以这样实现：

function iter (a, i)
	i = i + 1
	local v = a[i]
	if v then
		return i, v
	end
end

function ipairs (a)
	return iter, a, 0
end

--当 Lua 调用 ipairs(a) 开始循环时，他获取三个值：迭代函数 iter、状态常量 a、控制变量初始值 0；
--然后 Lua 调用 iter(a,0) 返回 1, a[1]（除非 a[1]=nil）；
--第二次迭代调用 iter(a,1) 返回 2, a[2]……直到第一个 nil 元素。



