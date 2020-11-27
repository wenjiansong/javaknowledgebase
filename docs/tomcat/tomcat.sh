#!/bin/bash
export JAVA_OPTS="-Xms100m -Xmx200m"
export JAVA_HOME=/root/svr/jdk
export CATALINA_HOME=/root/svr/apache-tomcat
export CATALINA_BASE=`pwd`

# start stop restart status
case $1 in
	start)
	$CATALINA_HOME/bin/catalina.sh start
	echo "start success"
	;;
 	stop)
                $CATALINA_HOME/bin/catalina.sh stop
                echo stop success!!
        ;;
        restart)
        $CATALINA_HOME/bin/catalina.sh stop
                echo stcaop success!!
                sleep 3
        $CATALINA_HOME/bin/catalina.sh start
        echo start success!!
        ;;
        version)
        $CATALINA_HOME/bin/catalina.sh version
        ;;
        configtest)
        $CATALINA_HOME/bin/catalina.sh configtest
        ;;
        esac
exit 0