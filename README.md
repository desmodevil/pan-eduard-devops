# DevOps project — Eduard Pan

Group: IT2-2312 · Student ID: 37619 · Course: DevOps

Workflow: Linux → Git → GitHub → Jenkins → Docker

| File | Purpose |
|---|---|
| `Pan_Eduard_info.txt` | Student information |
| `scripts/Pan_Eduard_system.sh` | Bash script: student and system information |
| `app/app.sh` | Application that runs inside the Docker container |
| `Dockerfile` | Builds image `pan-eduard-devops` |
| `docker-compose.yml` | Starts container `pan-eduard-container` |
| `Jenkinsfile` | Pipeline: Checkout → Build → Test → Docker Build → Docker Run |
| `config/app.conf` | Application configuration |

## Run with Docker

Build the image:

    docker build -t pan-eduard-devops .

Run the application:

    docker run --rm pan-eduard-devops

Run with Docker Compose:

    docker compose up --build
    docker compose down

The application prints student information and exits successfully.
