# Task 2: Docker Installation and Web Application Deployment

## Objective
To install Docker, build a Docker image, and deploy a containerized web application accessible on port 8000.

---

## Step 1: Install Docker

Update package list.
```bash
sudo apt update
```


Install Docker.
```bash
sudo apt install docker.io -y
```


Start Docker service.
```bash
sudo systemctl start docker
```


Enable Docker on system boot.
```bash
sudo systemctl enable docker
```


Verify Docker installation.
```bash
docker --version
```


---

## Step 2: Create Project Directory
```bash
mkdir Task-2_webapp
cd Task-2_webapp
```


---

## Step 3: Create index.html
```bash
vim index.html
```

Example content:
```bash
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docker Deployment</title>
</head>
<body style="margin:0; padding:0; background-color:#f4f6f9; font-family:Arial, sans-serif; display:flex; justify-content:center; align-items:center; height:100vh;">

    <div style="background:#ffffff; padding:40px; border-radius:10px; box-shadow:0 4px 15px rgba(0,0,0,0.1); text-align:center; width:90%; max-width:500px;">

        <h1 style="color:#2c3e50; margin-bottom:20px;">
            🚀 Successfully Deployed in Docker
        </h1>

        <p style="color:#555; font-size:16px; margin-bottom:15px;">
            This application is now running inside a Docker container.
        </p>

        <p style="color:#333; font-size:15px; background:#eef2ff; padding:10px; border-radius:6px;">
            📌 Task Submission: This deployment demonstrates successful containerization and execution of the application using Docker.
        </p>

        <p style="margin-top:20px; font-size:12px; color:#888;">
            Deployment Status: Active & Running
        </p>

    </div>

</body>

```


---

## Step 4: Create Dockerfile
```bash
vim Dockerfile
```


Content:
```bash
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
```


---

## Step 5: Add user to docker group
```bash
sudo usermod -aG docker a-vin
```
restart the vm

## Step 6: Build Docker Image
```bash
docker build -t cwl_webapp .
```


Check created images:
```bash
docker images
```


---

## Step 7: Run Docker Container
```bash
docker run -d -p 8000:80 --name web-container cwl_webapp
```


Check running containers.
```bash
docker ps
```


---

## Step 8: Access the Application

Open a browser and navigate to:
```bash
http://server-ip:8000
```


Example:

http://10.181.122.217:8000

---

## Expected Outcome

The web application should be successfully running inside a Docker container and accessible via the server IP address on port 8000.