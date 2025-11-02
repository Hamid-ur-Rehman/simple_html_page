# Use official Nginx image
FROM nginx:latest

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy your HTML, CSS, JS, and image files into the container
COPY . .

# Expose port 8000
EXPOSE 8000

# Update nginx to listen on port 8000
RUN sed -i 's/listen\s\+80;/listen 8000;/' /etc/nginx/conf.d/default.conf

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
