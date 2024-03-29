#!/usr/bin/lua

--多维数组
--
--多维数组即数组中包含数组或一维数组的索引键对应一个数组。
--
--以下是一个三行三列的阵列多维数组：
-- 初始化数组
array = {}
for i=1,3 do
	array[i] = {}
		for j=1,3 do
			array[i][j] = i*j
		end
end

-- 访问数组
for i=1,3 do
	for j=1,3 do
		print(array[i][j])
	end
end

--不同索引键的三行三列阵列多维数组：

-- 初始化数组
array = {}
maxRows = 3
maxColumns = 3
for row=1,maxRows do
	for col=1,maxColumns do
		array[row*maxColumns +col] = row*col
	end
end

-- 访问数组
for row=1,maxRows do
	for col=1,maxColumns do
		print(array[row*maxColumns +col])
	end
end
