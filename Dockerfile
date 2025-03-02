# Usa una imagen de Java con JDK 17
FROM eclipse-temurin:17-jdk-alpine

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR del servidor Eureka
COPY target/eureka-server.jar eureka-server.jar

# Exponer el puerto en el que corre Eureka
EXPOSE 8761

# Comando para ejecutar el servidor Eureka
ENTRYPOINT  ["java", "-jar", "eureka-server.jar"]
