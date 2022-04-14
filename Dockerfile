FROM docker.io/tomcat:8.5.29
EXPOSE 8080 8888

RUN chmod -R g+wrx $CATALINA_HOME/
RUN ls $CATALINA_HOME/webapps/
COPY webapps/ROOT.war $CATALINA_HOME/webapps/
