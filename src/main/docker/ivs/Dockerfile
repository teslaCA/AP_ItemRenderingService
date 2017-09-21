FROM tomcat:7.0.81-jre7

COPY ["previewer.war","/usr/local/tomcat/webapps/"]

COPY ["context.xml","/usr/local/tomcat/conf/context.xml"]

COPY ["web.xml","/usr/local/tomcat/conf/web.xml"]

CMD ["catalina.sh","run"]
