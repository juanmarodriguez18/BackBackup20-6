# Usa una imagen base de OpenJDK 17
FROM openjdk:17-jdk-alpine

# Etiqueta del mantenedor
LABEL maintainer="tu-email@ejemplo.com"

# Define una variable de entorno para la ubicación del JAR
ENV APP_FILE=buensaboruno-0.0.1-SNAPSHOT.jar

# Copia el archivo JAR ejecutable desde la carpeta build/libs dentro del contenedor
COPY build/libs/$APP_FILE /app/$APP_FILE

# Expone el puerto 8080 en el contenedor
EXPOSE 8080

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["java", "-jar", "/app/$APP_FILE"]
