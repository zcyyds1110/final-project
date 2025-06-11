# Personal Website and To-Do Application Deployment

## Student Information
- **Name**: Zhang Chi  
- **Student ID**: 20232042  
- **Profile Image**:  
  ![Profile Photo](images/20232042.jpg)

## Live Applications
- Personal Website: [http://82.157.250.79:8120](http://82.157.250.79:8120)
- To-Do Application: [http://82.157.250.79:8121](http://82.157.250.79:8121)

## GitHub Repository
- **Public Repository URL**: [https://github.com/your-username/your-repo-name](https://github.com/your-username/your-repo-name)

## Project Components

### 1. Personal Website
- **Files**: `index.html`, `style.css`, `20232042.jpg`
- **Port**: 8120 (mapped to container port 80)
- **Features**:
  - Responsive design
  - Profile photo display
  - Personal information section
  - Clean, modern styling

### 2. To-Do Application
- **Files**: `index.html` (in todo-app), `app.js`
- **Port**: 8121 (mapped to container port 3000)
- **Features**:
  - Add new tasks
  - List all tasks
  - Simple REST API backend
  - Clean user interface

## Deployment Architecture

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