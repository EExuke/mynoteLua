# Lua 数据库访问

本文主要为大家介绍 Lua 数据库的操作库：LuaSQL。
他是开源的，支持的数据库有：ODBC, ADO, Oracle, MySQL, SQLite 和 PostgreSQL。

本文为大家介绍 MySQL 的数据库连接。

LuaSQL 可以使用 LuaRocks 来安装可以根据需要安装你需要的数据库驱动。

LuaRocks 安装方法：
	$ wget http://luarocks.org/releases/luarocks-2.2.1.tar.gz
	$ tar zxpf luarocks-2.2.1.tar.gz
	$ cd luarocks-2.2.1
	$ ./configure; sudo make bootstrap
	$ sudo luarocks install luasocket
	$ lua
	Lua 5.3.0 Copyright (C) 1994-2015 Lua.org, PUC-Rio
	> require "socket"

安装不同数据库驱动：
	luarocks install luasql-sqlite3
	luarocks install luasql-postgres
	luarocks install luasql-mysql
	luarocks install luasql-sqlite
	luarocks install luasql-odbc

你也可以使用源码安装方式，Lua Github 源码地址：
	https://github.com/keplerproject/luasql 


