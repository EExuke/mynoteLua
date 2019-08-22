#!/usr/bin/lua 

--[[
-- 继承是指一个对象直接使用另一对象的属性和方法。可用于扩展基础类的属性和方法。
--]]

-- Meta class
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

--Square 对象继承了 Shape 类:
Square = Shape:new()
-- Derived class method new
function Square:new (o,side)
	o = o or Shape:new(o,side)
	setmetatable(o, self)
	self.__index = self
	return o
end

--[[
-- 完整实例
--
-- 以下实例我们继承了一个简单的类，来扩展派生类的方法，
-- 派生类中保留了继承类的成员变量和方法：
--]]

-- Meta class
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

Square = Shape:new()
-- 派生类方法 new
function Square:new (o,side)
	o = o or Shape:new(o,side)
	setmetatable(o, self)
	self.__index = self
	return o
end

-- 派生类方法 printArea
function Square:printArea ()
	print("正方形面积为 ",self.area)
end

-- 创建对象
mysquare = Square:new(nil,10)
mysquare:printArea()

Rectangle = Shape:new()
-- 派生类方法 new
function Rectangle:new (o,length,breadth)
	o = o or Shape:new(o)
	setmetatable(o, self)
	self.__index = self
	self.area = length * breadth
	return o
end

-- 派生类方法 printArea
function Rectangle:printArea ()
	print("矩形面积为 ",self.area)
end

-- 创建对象
myrectangle = Rectangle:new(nil,10,20)
myrectangle:printArea()


