FROM eclipse-temurin:21.0.5_11-jre-jammy@sha256:ebeb51a2a147be42b7d42342fecbeb2d9cb764f7742054024ac9a17bc1c8a21b

RUN mkdir -p /app

COPY backend/target/*.jar /app/app.jar

WORKDIR /app

RUN groupadd --gid 1000 spring

RUN useradd --gid 1000 -M -N --uid 1000 spring

RUN chown -R spring:spring /app

USER spring

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
