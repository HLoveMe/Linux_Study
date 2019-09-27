* 规范

	* 首句需要指定执行的shell环境(非必须)

		```
		#!/bin/bash
		```
	* 执行

		```
		1:给予执行权限 
			chmod 755 x.sh
			./x.sh
		
		2:直接sh执行
			sh x.sh
		
		```
	* 引号的作用

		```
		单引号[']  单引号忽略被它括起来的所有特殊字符。
		双引号["]  双引号忽略大多数特殊字符 排除 （ $ ）、反引号（ ` ）、反斜杠（ \ ）
		反引号[`]  反引号要求 Shell 执行被它括起来的内容
		
		com='AAA'
		echo 'this is $com' ==this is $com
		
		name='zzh'
		echo "it name is $name" == it name is zzh
		
		com=`pwd`
		echo "a b at $com" == a b at /aa/bb			
		```
		
* 环境变量

	```
	执行 env 查看当前环境变量
	```
	```
	SHELL：指明目前你使用的是哪种 Shell。我目前用的是 Bash（因为 SHELL=/bin/bash）。

	PATH：是一系列路径的集合。只要有可执行程序位于任意一个存在于 PATH 中的路径，那我们就可以直接输入可执行程序的名字来执行，而不需要加上所在路径前缀或进入到可执行程序所在目录去执行。上一课我们已经学习过 PATH 了。
	
	HOME：你的家目录所在的路径。
	
	PWD：目前所在的目录。
	```
	```
	自定义环境变量[.bash .bashrc ...]
	export NAME=zhuzhu
	
	```