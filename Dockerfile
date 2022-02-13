# Pull base image 
From tomcat:8-jre8 

# Maintainer 

COPY COPY ./webapp/target//webapp.war /usr/local/tomcat/webapps
