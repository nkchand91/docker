# adding base image as tomcat
from tomcat
ADD addressbook.war /usr/local/tomcat/webapps/addressbook.war
#webapps is the home directory for tomcat

#to run Tomcat we need to use Catalina.sh
CMD "catalina.sh" "run"

#Port forwarding
expose 8080
