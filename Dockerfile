#get a base image with jdk install
FROM openjdk:11

#creat a working directory to compile,run java
WORKDIR /app

#copy code from local machin to docker container
COPY hello.java .

#compile the cod
RUN javac hello.java

#run the java app
CMD ["java","hello"]
