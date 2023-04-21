from oraclelinux:8.4  as Stage1 
LABEL name=ravinder
LABEL email=ravinder@linux.com
RUN yum install maven java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64  -y 
RUN mkdir /myapp
#ADD https://github.com/redashu/java-springboot.git  /myapp/
ADD java-springboot  /myapp/
WORKDIR /myapp/
RUN mvn clean package 
# above command will build a war file from java spring app 
# it will create target forlder and under that it will create WebApp.war file 
FROM tomcat 
LABEL name=ravinder
LABEL email=ravinder@linux.com 
COPY --from=Stage1  /myapp/target/WebApp.war /usr/local/tomcat/webapps/
# if we don't use cmd / entrypoint for process definition 
# then your FROM image default cmd / entrypoint will be consideredeibccbchf