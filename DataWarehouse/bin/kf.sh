#! /bin/bash

case $1 in
"start"){
    for i in HadoopKL102 HadoopKL103 HadoopKL104
    do
        echo " --------启动 $i Kafka-------"
        ssh $i "/opt/module/kafka/bin/kafka-server-start.sh -daemon /opt/module/kafka/config/server.properties"
    done
};;
"stop"){
    for i in HadoopKL102 HadoopKL103 HadoopKL104
    do
        echo " --------停止 $i Kafka-------"
        ssh $i "/opt/module/kafka/bin/kafka-server-stop.sh "
    done
};;
esac
