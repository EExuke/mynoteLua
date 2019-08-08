#!/usr/bin/lua 

-- coroutine_test.lua 文件
co = coroutine.create(
function(i)
	print(i);
end
)

coroutine.resume(co, 1)   -- 1
print(coroutine.status(co))  -- dead

print("----------")

co = coroutine.wrap(
function(i)
	print(i);
end
)

co(1)

print("----------")

co2 = coroutine.create(
function()
	for i=1,10 do
		print(i)
		if i == 3 then
			print(coroutine.status(co2))  --running
			print(coroutine.running()) --thread:XXXXXX
		end
		coroutine.yield()
	end
end
)

coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3

print(coroutine.status(co2))   -- suspended
print(coroutine.running())

print("----------")

--[[
-- coroutine.running就可以看出来,coroutine在底层实现就是一个线程。
--
-- 当create一个coroutine的时候就是在新线程中注册了一个事件。
--
-- 当使用resume触发事件的时候，create的coroutine函数就被执行了，当遇到yield的时候就代表挂起当前线程，等候再次resume触发事件。 
--]]
