# malaysia-city


On going project for own used

## Docker

This project includes a Docker configuration for local development and production deployment (e.g., Google Cloud Run).

### Local Development

To run the application locally using Docker Compose:

```bash
docker-compose up --build
```

The application will be available at `http://localhost:8080`.

### Production Deployment (Google Cloud Run)

The `Dockerfile` is configured to listen on port `8080`, which is the default for Cloud Run.

1.  **Build and Push the Docker image:**

    ```bash
    gcloud builds submit --tag gcr.io/PROJECT-ID/malaysia-city
    ```

    Replace `PROJECT-ID` with your Google Cloud project ID.

2.  **Deploy to Cloud Run:**

    ```bash
    gcloud run deploy malaysia-city \
      --image gcr.io/PROJECT-ID/malaysia-city \
      --platform managed \
      --region us-central1 \
      --allow-unauthenticated
    ```

    Or deploy from source directly:

    ```bash
    gcloud run deploy malaysia-city --source .
    ```
