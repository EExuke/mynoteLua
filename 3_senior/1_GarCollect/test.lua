#!/usr/bin/lua 

mytable = {"apple", "orange", "banana"}

print(collectgarbage("count"))

mytable = nil

print(collectgarbage("count"))

--回收成功返回0
print(collectgarbage("collect"))

print(collectgarbage("count"))
