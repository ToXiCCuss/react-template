FROM eclipse-temurin:21.0.6_7-jre-jammy@sha256:d429aaa166a03a711f8af7566bc049904ef493d84e190d1dc6cef9bf19b906b9

RUN mkdir -p /app

COPY backend/target/*.jar /app/app.jar

WORKDIR /app

RUN groupadd --gid 1000 spring

RUN useradd --gid 1000 -M -N --uid 1000 spring

RUN chown -R spring:spring /app

USER spring

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
