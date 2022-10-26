FROM docker.io/tomcat:8.5.29
EXPOSE 8080 8888

# 
RUN chmod -R g+wrx $CATALINA_HOME/
RUN rm -rf $CATALINA_HOME/webapps/ROOT

#
COPY conf/server.xml $CATALINA_HOME/conf/server.xml
COPY webapps/ROOT.war $CATALINA_HOME/webapps/ROOT.war
