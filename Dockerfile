FROM eclipse-temurin:21.0.6_7-jre-jammy@sha256:02fc89fa8766a9ba221e69225f8d1c10bb91885ddbd3c112448e23488ba40ab6

RUN mkdir -p /app

COPY backend/target/*.jar /app/app.jar

WORKDIR /app

RUN groupadd --gid 1000 spring

RUN useradd --gid 1000 -M -N --uid 1000 spring

RUN chown -R spring:spring /app

USER spring

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
