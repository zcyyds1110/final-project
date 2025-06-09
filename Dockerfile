# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the website files to the container
COPY personal-site /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]