# Personal Website and To-Do Application Deployment

This project consists of two main components:
1. A personal website showcasing my profile
2. A simple to-do application

## Live Demo
- Personal Website: [http://82.157.250.79:8120](http://82.157.250.79:8120)
- To-Do Application: [http://82.157.250.79:8121](http://82.157.250.79:8121)

## Components

### 1. Personal Website
- **Files**: `index.html`, `style.css`, `20232042.jpg`
- **Port**: 8120 (mapped to container port 80)
- **Features**:
  - Responsive design
  - Profile photo display
  - Personal information section
  - Clean, modern styling
- **Access**: [http://82.157.250.79:8120](http://82.157.250.79:8120)

### 2. To-Do Application
- **Files**: `index.html` (in todo-app), `app.js`
- **Port**: 8121 (mapped to container port 3000)
- **Features**:
  - Add new tasks
  - List all tasks
  - Simple REST API backend
  - Clean user interface
- **Access**: [http://82.157.250.79:8121](http://82.157.250.79:8121)

## Deployment Architecture

The system uses Docker containers managed via Docker Compose:
```yaml
version: '3'
services:
  web:
    image: docker.io/zcyyds1110/my-app:latest
    ports:
      - "8120:80"
    restart: always
  
  todo:
    build: ./todo-app
    ports:
      - "8121:3000"
    restart: always