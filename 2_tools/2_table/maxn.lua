#!/usr/bin/lua

--[[
--  Table 最大值
--
--table.maxn 在 Lua5.2 之后该方法已经不存在了，我们定义了 table_maxn 方法来实现。
--
--以下实例演示了如何获取 table 中的最大值：
--]]

function table_maxn(t)
	local mn = nil;
	for k, v in pairs(t) do
		if(mn == nil) then
			mn = v
		end
		if mn < v then
			mn = v
		end
	end
	return mn
end

tbl = {[1] = 2, [2] = 6, [3] = 34, [26] =5}

print("tbl 最大值：", table_maxn(tbl))
print("tbl 长度 ", #tbl)  --在max处停止计数

--[[
--  注意：

--当我们获取 table 的长度的时候无论是使用 # 还是 table.getn 其都会在索引中断的地方停止计数，而导致无法正确取得 table 的长度。

--可以使用以下方法来代替：

function table_leng(t)
	local leng=0
	for k, v in pairs(t) do
		leng=leng+1
	end
	return leng;
end

--]]

