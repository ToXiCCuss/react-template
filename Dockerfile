FROM docker.io/eclipse-temurin:21-jre-alpine

RUN apk update && apk upgrade

WORKDIR /app

RUN addgroup -g 1000 spring && adduser -u 1000 -G spring -D spring

COPY backend/target/*.jar app.jar

RUN chown -R spring:spring /app

USER spring

EXPOSE 8080

ENTRYPOINT ["java", "-jar"]
CMD ["app.jar"]
