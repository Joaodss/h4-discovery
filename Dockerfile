FROM openjdk:17
COPY . /app
WORKDIR /app
CMD java -jar discovery-1.0.0.jar