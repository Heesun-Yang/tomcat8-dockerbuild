FROM docker.io/tomcat:8.5.29
EXPOSE 8080 8888

COPY websocket-chat.war $CATALINA_HOME/webapps/
