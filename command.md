# Linux_Study

* 目录

	```
	/bin /sbin  /usr/bin /usr/sbin 都是保存系统命令
		/bin /usr/bin 前者为都可使用的命令
		/sbin  /usr/sbin 只能是root 才能使用
	/usr 系统软件资源
	/boot 启动目录
	/etc 默认配置文件
	/home 是普通用户
	/root root用户
	/bin 函数库
	/meida /mnt /misc 挂载目录
	
	
	```

* 命令

	com [选项] [参数]
	
	```
		ls -a -l ===>ls -al
	```


*  ls 常看当前文件夹下的所有文件
	
	 * -a 显示所有沃尔玛可哦啊吗
	 * -d 查看目录本身属性
	 	
	 	```
	 		ls -la ~ 显示~ 目录下所有文件上属性
	 		ls -lad ~ 查看~目录属性
	 	```
	 * -l 显示文件详细内容

	 	* -lh 优化文件大小显示

	 	```
		drwxr-xr-x  14 AA  DD      476  3 23 17:16 小东西
		-rw-r--r--@  1 AA  DD   611892  6 21 10:30 未命名.pages
		
		-rw-r--r-- 
			第一位标识文件类型
			2-5 | 3-6 | 6-9 root权限  组权限  其用户权限
			
		@ | . : ACL权限
		
		14 | 1 :  当前引用个数			
		 
		AA  : 所有者
		DD  : 所属组
		611892 : 文件大小
		3 23 17:16 : 最后一次修改时间
	 	```
	 	
	 * 参数

	 	* ls -a xx.txt 查看该文件的属性
	 	
* pwd 查看当前所在路径
	
	 	
* 文件创建命令

	* mkdir

		```
		mkdir datas
		
		mkdir -p  A/B/datas 递归创建
		```
		
		
	* cd 切换目录

		```
			cd ===> cd ~
			
			cd ../
			
			cd -  进入上次所在目录
		
		```
		
	* 删除
		
		* rmdir 删除空目录
		* rm 
			* -f 强制
			* -r 删除目录
			
			```
			rm -rf  强制删除
			```	
			
	* cp赋值
		
		* -r 复制目录
		* -p 连带文件属性一起复制
		* -d 如果是链接文件 则复制链接属性
		* -a == -pdr

	* mv 剪切

		```
		mv [源] [目标]
		
		mv a.js b.js   改名
		```

		