# Pull base image 
From tomcat:8-jre8 

# Maintainer 

COPY /var/lib/jenkins/workspace/Testpipeline/webapp/target/webapp.war /usr/local/tomcat/webapps
