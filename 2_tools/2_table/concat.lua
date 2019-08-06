#!/usr/bin/lua

--[[
--  Table 连接
--
--我们可以使用 concat() 输出一个列表中元素连接成的字符串:
--]]

fruits = {"banana", "orange", "apple"}

-- 返回 table 连接后的字符串
print("连接后的字符串 ",table.concat(fruits))

-- 指定连接字符
print("连接后的字符串 ",table.concat(fruits,", "))

-- 指定索引来连接 table
print("连接后的字符串 ",table.concat(fruits,", ", 2,3))
