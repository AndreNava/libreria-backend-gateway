# Usar una imagen base con Java
FROM openjdk:17

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR al contenedor
COPY target/gateway-0.0.1-SNAPSHOT.jar gateway.jar

# Exponer el puerto del Eureka Server
EXPOSE 8762

# Definir el comando para ejecutar el servicio
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]