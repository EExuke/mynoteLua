#!/usr/bin/lua 

--[[
-- 以下简单的类包含了三个属性： area, length 和 breadth，
-- 方法printArea用于打印计算结果：
--]]

-- 元类
Rectangle = {area = 0, length = 0, breadth = 0}

-- 派生类的方法 new
function Rectangle:new (o,length,breadth)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.length = length or 0
	self.breadth = breadth or 0
	self.area = length*breadth;
	return o
end

-- 派生类的方法 printArea
function Rectangle:printArea ()
   print("矩形面积为 ",self.area)
end

--创建对象
r = Rectangle:new(nil, 10, 20)

--访问属性
print(r.length)

--访问成员函数
r:printArea()

------------------------------------------------------

--[[
-- 完整实例
--]]

-- 元类
Shape = {area = 0}

-- 基础类方法 new
function Shape:new (o,side)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	side = side or 0
	self.area = side*side;
	return o
end

-- 基础类方法 printArea
function Shape:printArea ()
	print("面积为 ",self.area)
end

-- 创建对象
myshape = Shape:new(nil,10)

myshape:printArea()

