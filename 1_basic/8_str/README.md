转义字符用于表示不能直接显示的字符，比如后退键，回车键，等。如在字符串转换双引号可以使用 "\""。

所有的转义字符和所对应的意义：
	转义字符  	意义                                	ASCII码值（十进制）
	\a        	响铃(BEL)                           	007
	\b        	退格(BS) ，将当前位置移到前一列     	008
	\f        	换页(FF)，将当前位置移到下页开头    	012
	\n        	换行(LF) ，将当前位置移到下一行开头 	0120
	\r        	回车(CR) ，将当前位置移到本行开头   	013
	\t        	 水平制表(HT) （跳到下一个TAB位置） 	009
	\v        	垂直制表(VT)                        	011
	\\        	代表一个反斜线字符''\'              	092
	\'        	代表一个单引号（撇号）字符          	039
	\"        	代表一个双引号字符                  	034
	\0        	空字符(NULL)                        	000
	\ddd      	1到3位八进制数所代表的任意字符      	三位八进制
	\xhh      	1到2位十六进制所代表的任意字符      	二位十六进制



# 字符串操作
	序号	 方法 & 用途
	1   	string.upper(argument) : 字符串全部转为大写字母。
	2   	string.lower(argument) : 字符串全部转为小写字母。
	3   	string.gsub(mainString,findString,replaceString,num) : 在字符串中替换,mainString为要替换的字符串， findString 为被替换的字符，replaceString 要替换的字符，num 替换次数（可以忽略，则全部替换）
	4   	string.find (str, substr, [init, [end]]) :  在一个指定的目标字符串中搜索指定的内容(第三个参数为索引),返回其具体位置。不存在则返回 nil。 
	5   	string.reverse(arg) ： 字符串反转
	6   	string.format(...) ： 返回一个类似printf的格式化字符串 
	7   	string.char(arg) 和 string.byte(arg[,int]) ： char 将整型数字转成字符并连接， byte 转换字符为整数值(可以指定某个字符，默认第一个字符)。 
	8   	string.len(arg) ： 计算字符串长度。 
	9   	string.rep(string, n) ： 返回字符串string的n个拷贝 
	10  	.. ： 链接两个字符串
	11  	string.gmatch(str, pattern) ： 回一个迭代器函数，每一次调用这个函数，返回一个在字符串 str 找到的下一个符合 pattern 描述的子串。如果参数 pattern 描述的字符串没有找到，迭代函数返回nil。
	12  	string.match(str, pattern, init) ： 只寻找源字串str中的第一个配对. 参数init可选, 指定搜寻过程的起点, 默认为1。
                                                在成功配对时, 函数将返回配对表达式中的所有捕获结果; 如果没有设置捕获标记, 则返回整个配对字符串. 当没有成功的配对时, 返回nil。 
