#!/usr/bin/lua

--[ 0 为 true ]
if(0)
then
    print("0 为 true")
end

--[[
---- Lua if 语句语法格式如下：

if(布尔表达式)
then
   --[ 在布尔表达式为 true 时执行的语句 --]
end


---- Lua if...else 语句语法格式如下：

if(布尔表达式)
then
   --[ 布尔表达式为 true 时执行该语句块 --]
else
   --[ 布尔表达式为 false 时执行该语句块 --]
end


---- Lua if...elseif...else 语句语法格式如下：

if( 布尔表达式 1)
then
	--[ 在布尔表达式 1 为 true 时执行该语句块 --]

elseif( 布尔表达式 2)
then
	--[ 在布尔表达式 2 为 true 时执行该语句块 --]

elseif( 布尔表达式 3)
then
	--[ 在布尔表达式 3 为 true 时执行该语句块 --]
else 
	--[ 如果以上布尔表达式都不为 true 则执行该语句块 --]
end

--]]
--
----------------------------------------------------------
--[[
Lua if 嵌套语句语法格式如下：

if( 布尔表达式 1)
then
	--[ 布尔表达式 1 为 true 时执行该语句块 --]
	if(布尔表达式 2)
	then
		--[ 布尔表达式 2 为 true 时执行该语句块 --]
	end
end
--]]
--以下实例用于判断变量 a 和 b 的值：
--[ 定义变量 --]
a = 100;
b = 200;

--[ 检查条件 --]
if( a == 100 )
	then
		--[ if 条件为 true 时执行以下 if 条件判断 --]
	if( b == 200 )
	then
		--[ if 条件为 true 时执行该语句块 --]
		print("a 的值为 100 b 的值为 200" );
	end
end
print("a 的值为 :", a );
print("b 的值为 :", b );


