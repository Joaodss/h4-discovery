FROM maven:3.8.3-openjdk-17-slim AS build
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn clean -f pom.xml
RUN mvn -B package -f pom.xml -DskipTests

FROM openjdk:17-alpine
COPY --from=build /workspace/target/*.jar discovery-service.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/discovery-service.jar"]
