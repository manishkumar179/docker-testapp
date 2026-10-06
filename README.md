# docker-testapp




# 🐳 Docker Todo App

This project is a simple Todo application created to understand and practice Docker fundamentals. The main purpose of this project is to learn how to containerize an application, create Docker images, run containers, and manage multiple services using Docker Compose.

## 📚 What I Learned

Through this project, I learned:

- Docker basics and containerization
- Docker Images and Containers
- Writing a Dockerfile
- Building Docker images
- Running and managing containers
- Port mapping
- Docker Compose
- YAML configuration
- Connecting an application with MongoDB using Docker
- Basic Docker commands
- How Docker helps create consistent development environments

## 🛠️ Prerequisites

Before running the project, make sure the following tools are installed:

- Git
- Node.js
- npm
- Docker Desktop

Check the installations using:

```bash
git --version
node --version
npm --version
docker --version
```

## 📥 Clone the Repository

Clone the project from GitHub:

```bash
git clone https://github.com/manishkumar179/docker-testapp.git
```

Move into the project directory:

```bash
cd docker-testapp
```

## 💻 Run the Project Normally

Install the required dependencies:

```bash
npm install
```

Start the application:

```bash
npm start
```

If the project uses a different npm script, check `package.json` and run the appropriate command, such as:

```bash
npm run dev
```

## 🐳 Run the Project Using Docker

### Step 1: Create a Dockerfile

A Dockerfile contains instructions that Docker uses to create an image for the application.

Example:

```dockerfile
FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
```

> Update the port and start command according to the actual application configuration.

### Step 2: Build the Docker Image

```bash
docker build -t todo-app .
```

Here:

- `docker build` builds the Docker image.
- `-t todo-app` gives the image a name.
- `.` tells Docker to use the Dockerfile in the current directory.

### Step 3: Check the Docker Image

```bash
docker images
```

### Step 4: Run the Container

```bash
docker run -p 3000:3000 todo-app
```

The format is:

```text
HOST_PORT:CONTAINER_PORT
```

Then open the application in your browser using the configured localhost port.

## 🗄️ MongoDB with Docker Compose

Docker Compose can be used when the application needs multiple services, such as the Todo application and MongoDB.

Example `mongodb.yaml`:

```yaml
services:
  mongo:
    image: mongo
    ports:
      - "27017:27017"
```

Start the services:

```bash
docker compose -f mongodb.yaml up
```

Run them in the background:

```bash
docker compose -f mongodb.yaml up -d
```

Stop and remove the Compose containers:

```bash
docker compose -f mongodb.yaml down
```

## 🔧 Useful Docker Commands

Check running containers:

```bash
docker ps
```

Check all containers:

```bash
docker ps -a
```

Check Docker images:

```bash
docker images
```

Stop a container:

```bash
docker stop <container_id>
```

Remove a container:

```bash
docker rm <container_id>
```

Remove an image:

```bash
docker rmi <image_id>
```

View container logs:

```bash
docker logs <container_id>
```

## 📄 Docker Implementation Guide

A detailed Docker Todo App implementation guide is also available in this repository:

```text
Docker_ToDo_App_Guide/
└── Docker_Todo_App_Implementation_Guide.pdf
```

The guide explains the Docker implementation process in a simple and step-by-step manner.

## 🎯 Purpose of This Project

The main objective of this project is to gain practical knowledge of Docker and understand how an application can be packaged with its dependencies and run consistently across different environments.

## 👨‍💻 Author

**Manish Kumar**

B.Tech Computer Science & Engineering
Interested in Full Stack Development, Backend Development, DevOps, and AI.
