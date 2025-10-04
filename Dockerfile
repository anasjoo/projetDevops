# Utiliser une image de base Java 17 (runtime seulement)
FROM eclipse-temurin:17-jre-jammy

# Créer un dossier pour l'application
WORKDIR /app

# Copier le jar généré par Maven dans l'image
COPY target/*.jar app.jar

# Exposer le port 8080 (Spring Boot démarre souvent ici)
EXPOSE 8080

# Commande de lancement de l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
