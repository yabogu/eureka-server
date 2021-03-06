FROM java:8
VOLUME /tmp
COPY target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar
RUN bash -c "touch /eureka-server.jar"
EXPOSE 8021
ENTRYPOINT ["java","-jar","eureka-server.jar"]