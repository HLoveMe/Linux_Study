# Linux_Study


* 命令

	com [选项] [参数]
	
	```
		ls -a -l ===>ls -al
	```


*  ls 常看当前文件夹下的所有文件
	
	 * -a 显示所有文件
	 * -d 查看目录本身属性
	 	
	 	```
	 		ls -la ~    显示~ 目录下所有文件上属性
	 		ls -lad ~   查看~目录属性
	 	```
	 * -i 文件的i节点  ID
	 * -h 优化文件大小显示
	 * -l 显示文件详细内容

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
			
	* cp 复制
		
		* -r 复制目录
		* -p 连带文件属性一起复制
		* -d 如果是链接文件 则复制链接属性
		* -a == -pdr

	* mv 剪切

		```
		mv [源] [目标]
		
		mv a.js b.js   改名
		```

	* ln 链接

		*  ln 硬链接

			```
			一件文件的两个文件分身
				都指向一个文件
				可以单独存在（删掉一个也可以）
				
			不能跨分区
			不能针对文件夹
			只能通过i 判断 【相同的i ID】
			```

		* ln -s 软连接[符号连接]

			```
			软连接是独立的文件 拥有自己的i和内存  
			
			源文件不在 软连接无效
			
			有相同的权限
			```
	* pwd
	
		```
		查看当前工作目录
		```
	* cat [学习]

	* chmod [学习]
	
			
	* 搜索

		* locate 文件名 搜索 【快】

			```
			locate [文件名]
				在/var/lib/mlocate 数据库搜索 【一天更新】
			updatedb 更新数据库
			
			/etc/locate.conf locate搜索配置文件
			```
		* whereis which 命令 搜索

			```
			whereis 搜索命令所在地方
				-b 查看执行文件
				-m 查看文档
			which 系统|用户 命令
				
			```
		* find 文件搜索 【慢】 [find [范围] [条件]]
			
			```
			find / -name xxx.js
			find / -name "*?.JPG"
			```
			* -name
			* -iname 不区分大小写
			* -user 指定所有者
				
				```
				find / -user zhuzihao 
				```
			* -nouser 没有所有值

				```
				find / -nouser
				```
			* -mtime  修改时间
			* -atime 访问时间
			* -ctime 改变文件属性
				```
				-10 十天内
				10 十天当前修改
				+10十天之前修改
				```
			* -size 大小

				```
				-25k 小于
				25k
				+25k 大于25k
				
				20M
				-20M
				```
				
			* -inum 通过i[i节点]搜文件

			* -a and 多个条件满足
			* -o or 或

				```
				find / -size +20k -a -size 50k
					[20-50]k文件
				```
			* "-exec [命令] {} \;" 对找到的文件进行处理
				
				```
				find ./ -size +10k -a -size -100k -exec ls -hl {} \;
				```
				
			
			
			
		* grep 文件内容 字符串搜索
		
			```
			grep [选项...] [内容|RegExp] [文件|文件夹]
			```
			
			* -a | --text  二进制数据也要查找
			* -c 仅仅显示查找的总行数
			* -i 忽略大小写
			* -n 显示行数
			* -o 会把你指定的搜索内容显示出来
			* -d | -r 如果目标是文件夹 必须指定

			```
			默认只能文件查找 
			
			grep -i -n -o "+10" xxFile
			
			grep -n -r "rxjs" ./* 该目录下[递归]
			
			```
	* man 查看命令文档
		
		```
		man ls 查看ls命令文档
		
		LS(1)                     BSD General Commands Manual                    LS(1)
		
		NAME
		     ls -- list directory contents
		
		SYNOPSIS
		     ls [-ABCFGHLOPRSTUW@abcdefghiklmnopqrstuwx1] [file ...]
		
		DESCRIPTION
			.......
			-A      List all entries except for . and ...  Always set for the super-
             user.

		     -a      Include directory entries whose names begin with a dot (.).
		     
		     
		```
		
		* 命令查看

			* man ls 只能查看系统命令 【cd shell自带命令无法查看】
			* whereis ls  无执行文件的为安装命令 不是系统命令 【/bin/ls 为安装命令】
			* help cd 查看cd命令   无法查看shell 自带命名
		
	* chkconfig [学习]

	* 文件解压缩

		```
		.zip .gz .bz2 格式 解压缩
		```
		
		* .zip

			```
			压缩文件
			 zip 压缩文件名  源文件 【zip a.zip a.txt】
			  
			压缩目录
			 zip -r 压缩文件名  源目录 [zip -r images.zip images]
			 
			解压缩
				unzip xx.zip文件
			```
			
		* .gz

			```
			gzip 源文件 》压缩为.gz压缩格式  原文件消失
			
			gzip -c abc > abc.gz 压缩为.gz压缩格式 原文件存在
			
			gzip -r 目录 | 压缩目录下所有文件
			
			gzip -d aa.gz 解压
			gunzip  aa.gz
			gunzip -r images
			
			```
			
		* .bz2

			```
			bzip2 原文件 | 不保留原文件
			
			bzip2 -k 原文件 |保留元原件
			
			bzip2 -d 文件 | bunzip2 文件 解压缩
			
			不能压缩目录
			```
		
		* 【为解决上面打包文件夹不方便问题】
			
			* 1 tar  打包 
	
				```
				tar -cvf 输出文件名 原文件|文件夹
					
				tar -xvf 文件  解压
				```
		
			* 2 打包后在压缩所需格式

				```
				zip a.tar
				
				bzip2 a.tar
				```
				
			* 合并 1 2

				```
				tar -cvfz aa.tar.gz 原文件1 目录2 [打包多个] -C /x/a/
				tar -xvfz aa.tar.gz
				
				tar -cvfj aa.tar.bz2 原文件1 目录2
				tar -xvfj aa.tar.bz2			
				```
				
			```
				-c 打包
				-x 解压
				-v显示过程
				-f指定打包输出名称
				-C 指定输出路径
				-t 查看压缩包内容
			```
			
	* 关机

		shundown 选项 时间

		```
		 -h 关机
		 -r 重启
		 -c 取消上一个关机命令
		 
		 shutdown -h now
		 shutdown -r 12:00
		 shutdown -c
		 
		```
	* logout 退出登入窗口 【关闭shell】

		```
		一定记得关闭登入窗口
		```