#!/bin/bash

case $1 in
"start"){
	for i in HadoopKL102 HadoopKL103 HadoopKL104
	do
        echo ---------- zookeeper $i 启动 ------------
		ssh $i "/opt/module/zookeeper/bin/zkServer.sh start"
	done
};;
"stop"){
	for i in HadoopKL102 HadoopKL103 HadoopKL104
	do
        echo ---------- zookeeper $i 停止 ------------    
		ssh $i "/opt/module/zookeeper/bin/zkServer.sh stop"
	done
};;
"status"){
	for i in HadoopKL102 HadoopKL103 HadoopKL104
	do
        echo ---------- zookeeper $i 状态 ------------    
		ssh $i "/opt/module/zookeeper/bin/zkServer.sh status"
	done
};;
esac
