# This is the Dockerfile for Exercie 6.13 
FROM java:8
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN touch readme.txt
ENTRYPOINT ["java","-cp", "bin", "HelloWorld"]
