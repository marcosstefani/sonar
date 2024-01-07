
# SonarQube Custom Configuration

This Docker image extends the official SonarQube 10.3.0 Community edition image, providing a customized configuration through environment variables and a `sonar.properties` file.

## Objective

The purpose of this project is to offer a SonarQube Docker image with pre-configured settings, allowing users to quickly set up SonarQube instances with a PostgreSQL database.

## Environment Variables

The following table lists the environment variables used in this Docker image and their respective descriptions:

| Variable              | Description                                      |
| --------------------- | ------------------------------------------------ |
| `DATABASE_USERNAME` | Username for the PostgreSQL database.            |
| `DATABASE_PASSWORD` | Password for the PostgreSQL database.            |
| `DATABASE_HOST`     | Hostname or IP address of the PostgreSQL server. |
| `DATABASE_PORT`     | Port number for the PostgreSQL server.           |
| `DATABASE_NAME`     | Name of the PostgreSQL database.                 |

## Custom Configuration

The Dockerfile copies a custom `sonar.properties` file to the SonarQube configuration directory (`/opt/sonarqube/conf`). Users can modify this file to further customize their SonarQube setup based on specific requirements.

## Example Usage

```bash
docker run -e DATABASE_USERNAME=myuser \
           -e DATABASE_PASSWORD=mypassword \
           -e DATABASE_HOST=db.example.com \
           -e DATABASE_PORT=5432 \
           -e DATABASE_NAME=mydatabase \
           marcosstefani/sonar:1.0.0
```

Make sure to replace the placeholder values (`myuser`, `mypassword`, `db.example.com`, `5432`, `mydatabase`) with your actual database credentials and connection details.

## License

This project is licensed under the [MIT License](LICENSE).
