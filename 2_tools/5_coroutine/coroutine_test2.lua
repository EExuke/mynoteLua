#!/usr/bin/lua

--更详细的实例

function foo (a)
	print("foo 函数输出", a)
	return coroutine.yield(2 * a) -- 返回  2*a 的值
end

co = coroutine.create(function (a , b)
	print("第一次协同程序执行输出", a, b) -- co-body 1 10
	local r = foo(a + 1)

	print("第二次协同程序执行输出", r)
	local r, s = coroutine.yield(a + b, a - b)  -- a，b的值为第一次调用协同程序时传入

	print("第三次协同程序执行输出", r, s)
	return b, "结束协同程序"                   -- b的值为第二次调用协同程序时传入
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--分割线----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---分割线---")

--[[
--以上实例解释如下：
--
-- 调用resume，将协同程序唤醒,resume操作成功返回true，否则返回false；
-- 协同程序运行；
-- 运行到yield语句；
-- yield挂起协同程序，第一次resume返回；（注意：此处yield返回，参数是resume的参数）
-- 第二次resume，再次唤醒协同程序；（注意：此处resume的参数中，除了第一个参数，剩下的参数将作为yield的参数）
-- yield返回；
-- 协同程序继续运行；
-- 如果使用的协同程序继续运行完成后继续调用 resume方法则输出：cannot resume dead coroutine

resume和yield的配合强大之处在于，resume处于主程中，它将外部状态（数据）传入到协同程序内部；而yield则将内部的状态（数据）返回到主程中。
--]]
