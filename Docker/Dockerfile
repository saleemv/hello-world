# Using CentOS-6.9 for convenience. 
FROM centos:6.9 

#Make Sure you have a copy of the oracle Jdk rpm in the context directory.
COPY jdk-8u161-linux-x64.rpm  /tmp/ 

RUN yum -y localinstall /tmp/jdk-8u161-linux-x64.rpm && rm -f /tmp/jdk-8u161-linux-x64.rpm 

ENV JAVA_HOME="/usr/java/jdk1.8.0_161" JRE_HOME="/usr/java/jdk1.8.0_161/jre" 
ENV PATH=$PATH:/usr/java/jdk1.8.0_161/bin:/usr/java/jdk1.8.0_161/jre/bin 

# Our helloworld app is listening on port 8080
EXPOSE 8080 

# Make sure there is a copy of this application war file in the context directory. 
COPY helloworld.war / 

# Running the app.
CMD java -jar helloworld.war 
