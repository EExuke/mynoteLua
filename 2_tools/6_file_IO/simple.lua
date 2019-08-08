#!/usr/bin/lua 

--[[
-- 简单模式

-- 简单模式使用标准的 I/O 或使用一个当前输入文件和一个当前输出文件。

-- 以下为 file.lua 文件代码，操作的文件为test.lua(如果没有你需要创建该文件)，代码如下：
--]]

-- 以只读方式打开文件
file = io.open("test.lua", "r")

-- 设置默认输入文件为 test.lua
io.input(file)

-- 输出文件第一行
print(io.read())

-- 关闭打开的文件
io.close(file)

-- 以附加的方式打开只写文件
file = io.open("test.lua", "a")

-- 设置默认输出文件为 test.lua
io.output(file)

-- 在文件最后一行添加 Lua 注释
io.write("--  test.lua 文件末尾注释")

-- 关闭打开的文件
io.close(file)


--[[
--  在以上实例中我们使用了 io."x" 方法，其中 io.read() 中我们没有带参数，参数可以是下表中的一个：

--  模式    	描述
--  "*n"    	读取一个数字并返回它。例：file.read("*n")
--  "*a"    	从当前位置读取整个文件。例：file.read("*a"read)
--  "*l"    	（默认）读取下一行，在文件尾 (EOF) 处返回 nil。例：file.read("*l")
--  number  	返回一个指定字符个数的字符ä²，或在 EOF 时返回 nil。例：file.read(5)

其他的 io 方法有：
	io.tmpfile():返回一个临时文件句柄，该文件以更新模式打开，程序结束时自动删除

	io.type(file): 检测obj是否一个可用的文件句柄

	io.flush(): 向文件写入缓冲中的所有数据

	io.lines(optional file name): 返回一个迭代函数,每次调用将获得文件中的一行内容,当到文件尾时，将返回nil,但不关闭文件

--]]
