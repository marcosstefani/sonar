FROM sonarqube:10.3.0-community

COPY sonar.properties /opt/sonarqube/conf

ENV SONARQUBE_HOME=/opt/sonarqube \
    sonar.jdbc.username=${DATABASE_USERNAME} \
    sonar.jdbc.password=${DATABASE_PASSWORD} \
    sonar.jdbc.url=jdbc:postgresql://${DATABASE_HOST}:${DATABASE_PORT}/${DATABASE_NAME}