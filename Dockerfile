FROM eclipse-temurin:21.0.6_7-jre-jammy@sha256:e2e753a861012db3c73085749790c7a327a769dd89319136372097f187d83575

RUN mkdir -p /app

COPY backend/target/*.jar /app/app.jar

WORKDIR /app

RUN groupadd --gid 1000 spring

RUN useradd --gid 1000 -M -N --uid 1000 spring

RUN chown -R spring:spring /app

USER spring

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
