FROM oraclelinux:8.4 
LABEL name=ravinder
LABEL   email=ravinder@linux.com
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 -y 
RUN mkdir /code 
COPY ravinder.java /code/
WORKDIR /code
# changing directory like cd command 
RUN javac ravinder.java 
# compiling 
CMD ["java","myclass"]