FROM openjdk:17-alpine
COPY target/discovery-*.jar discovery-service/discovery-service.jar
WORKDIR discovery-service
CMD ["java","-jar","discovery-service.jar"]
