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
mkdir webapp
cd webapp
```


---

## Step 3: Create index.html
```bash
nano index.html
```

Example content:
```bash
<!DOCTYPE html>
<html>
<head>
<title>DevOps Internship</title>
</head>
<body>
<h1>Welcome to My Docker Web Application</h1>
<p>DevOps Internship Assignment</p>
</body>
</html>
```


---

## Step 4: Create Dockerfile
```bash
nano Dockerfile
```


Content:
```bash
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
```


---

## Step 5: Build Docker Image
```bash
docker build -t my-webapp .
```


Check created images:
```bash
docker images
```


---

## Step 6: Run Docker Container
```bash
docker run -d -p 8000:80 --name web-container my-webapp
```


Check running containers.
```bash
docker ps
```


---

## Step 7: Access the Application

Open a browser and navigate to:
```bash
http://server-ip:8000
```


Example:

http://192.168.1.10:8000

---

## Expected Outcome

The web application should be successfully running inside a Docker container and accessible via the server IP address on port 8000.