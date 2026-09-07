FROM eclipse-temurin:21-jdk-alpine AS build

WORKDIR /app
COPY HelloServer.java .
RUN javac --add-modules jdk.httpserver HelloServer.java

FROM eclipse-temurin:21-jre-alpine

WORKDIR /app
COPY --from=build /app/HelloServer.class .

EXPOSE 8080
CMD ["java", "--add-modules", "jdk.httpserver", "HelloServer"]
