FROM openjdk:17
COPY app/discovery-*.jar /discovery.jar
CMD ["java","-jar","discovery-1.0.0.jar"]