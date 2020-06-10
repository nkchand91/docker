rm -rf dockerjenkins
mkdir dockerjenkins
cd dockerjenkins
cp /var/lib/jenkins/workspace/package/target/addressbook.war .
touch dockerfile
cat << EOT >> dockerfile
# adding base image as tomcat
from tomcat
ADD addressbook.war /usr/local/tomcat/webapps/addressbook.war
#webapps is the home directory for tomcat

#to run Tomcat we need to use Catalina.sh
CMD "catalina.sh" "run"


#Port forwarding
expose 8080
EOT


docker build -t myimages:$BUILD_NUMBER .
#cant give a fix tag coz every time new image will created, we will use Env_var .

docker images

docker run -itd -P myimages:$BUILD_NUMBER
## we are not giving any continer name as we are depoying new image.

docker ps
