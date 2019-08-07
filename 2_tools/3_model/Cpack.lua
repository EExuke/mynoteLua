#!/usr/bin/lua

--[[
-- C 包
--
-- Lua和C是很容易结合的，使用 C 为 Lua 写包。
--
-- 与Lua中写包不同，C包在使用以前必须首先加载并连接，在大多数系统中最容易的实现方式是通过动态连接库机制。
--
-- Lua在一个叫loadlib的函数内提供了所有的动态连接的功能。这个函数有两个参数:库的绝对路径 和 初始化函数。
--
-- 所以典型的调用的例子如下:
--]]

local path = "/usr/local/lua/lib/libluasocket.so"
local f = loadlib(path, "luaopen_socket")

--[[
-- loadlib 函数加载指定的库并且连接到 Lua，然而它并不打开库（也就是说没有调用初始化函数），
-- 反之他返回初始化函数作为 Lua 的一个函数，这样我们就可以直接在Lua中调用他。
--
-- 如果加载动态库或者查找初始化函数时出错，loadlib 将返回 nil 和错误信息。
-- 我们可以修改前面一段代码，使其检测错误然后调用初始化函数：
--]]

local path = "/usr/local/lua/lib/libluasocket.so"
-- 或者 path = "C:\\windows\\luasocket.dll"，这是 Window 平台下
local f = assert(loadlib(path, "luaopen_socket"))
f()  -- 真正打开库
