FROM openjdk:17
COPY app/discovery-*.jar /discovery.jar
CMD ["java","-jar","discovery.jar"]