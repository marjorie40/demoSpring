# Image runtime Java 21 jre OK mais mieux si on utilise :21-jdk
FROM eclipse-temurin:21-jdk

# Repertoire de travail
WORKDIR /app

# Copier le jar genere
COPY demoSpring-0.0.1-SNAPSHOT.jar api.jar

# Exposer le port de l'API
EXPOSE 9000

# Demarrer l'application Spring Boot
ENTRYPOINT ["java", "-jar", "api.jar"]