# Usa una imagen base de OpenJDK 17
FROM openjdk:17-jdk-alpine

# Etiqueta del mantenendor
LABEL maintainer="tu-email@ejemplo.com"

# Copia el archivo JAR ejecutable desde la carpeta build/libs dentro del contenedor
COPY ./build/libs/buensaboruno-0.0.1-SNAPSHOT.jar /app/buensaboruno.jar

# Expone el puerto 8080 en el contenedor
EXPOSE 8080

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["java", "-jar", "/app/buensaboruno.jar"]
