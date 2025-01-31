FROM eclipse-temurin:21.0.6_7-jre-jammy@sha256:0f48eeecb11c875243f4738ffd7ade040b38aad0529a5fd26393aa8a8bf75145

RUN mkdir -p /app

COPY backend/target/*.jar /app/app.jar

WORKDIR /app

RUN groupadd --gid 1000 spring

RUN useradd --gid 1000 -M -N --uid 1000 spring

RUN chown -R spring:spring /app

USER spring

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
