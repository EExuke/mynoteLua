#!/usr/bin/lua 

--[[
--  Lua提供了xpcall函数，xpcall接收第二个参数 —— 一个错误处理函数，当错误发生时，Lua会在调用桟展开（unwind）前调用错误处理函数，
--  于是就可以在这个函数中使用debug库来获取关于错误的额外信息了。
--  debug库提供了两个通用的错误处理函数:
--
--      debug.debug：提供一个Lua提示符，让用户来检查错误的原因
--      debug.traceback：根据调用桟来构建一个扩展的错误消息
--]]


function myfunction ()
	n = n/nil
end

function myerrorhandler( err )
	print( "ERROR:", err )
end

status = xpcall( myfunction, myerrorhandler )
print( status)
