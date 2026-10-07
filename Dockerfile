# ---- Build stage ----
FROM maven:3.9.9-eclipse-temurin-21-alpine AS builder

WORKDIR /app

# Copiar primero el POM para aprovechar cache
COPY pom.xml .

# Descargar dependencias
RUN mvn -B dependency:go-offline

# Copiar código fuente
COPY src ./src

# Compilar aplicación
RUN mvn -B clean package -DskipTests


# ---- Runtime stage ----
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Crear usuario no root
RUN addgroup -S spring && adduser -S spring -G spring

# Copiar JAR generado
COPY --from=builder /app/target/*.jar app.jar

USER spring:spring

EXPOSE 8080

ENTRYPOINT ["java", "-XX:+UseContainerSupport", "-XX:MaxRAMPercentage=75.0", "-jar", "app.jar"]