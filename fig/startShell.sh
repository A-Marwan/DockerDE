#docker pull mar2max/websrv
docker run -t -i  -v `pwd`:/vagrant --link PROJECTNAME_rabbitmq_1:rabbitmq --link PROJECTNAME_elasticsearch_1:elasticsearch --link PROJECTNAME_mysql_1:mysql mar2max/websrv /bin/bash
