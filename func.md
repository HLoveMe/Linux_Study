功能
=====

* 自动运行shell
	
	```
	开机会运行 
	/etc/rc.local脚本 可添加你的命令
	```

	```
	开机启动
	crontab -e
	@reroot xxx.sh//加入需要启动的sh
	```
	```
	开机运行
	1：cd /etc/init.d/
	2：touch autostart.sh
	3：chmod 755 autostart.sh
	4：chkconfig--add autostart.sh 加入开机启动
	5：chkconfig autostart.sh on 运行
	```
	
	```
	打开终端运行
	/etc/profile.d/ 目录下新建sh  会被[/etc/profile]自动扫描运行
	```

	```
	打开终端运行
	.bashrc 
		/usr/xx/node xx.js
		
	source .bashrc
	```	
	```
	MAC 登入运行
	
	设置 > 用户和群组 > [点击用户] [点击登录项] [ + shell脚本]
	```	


* & 将这条命令后台执行 不占用当前命令行

	```
	node xx.js &
	
	窗口关闭后 会自动停止后台运行
	```
