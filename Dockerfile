# Use the official Nginx image
FROM nginx:latest

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy your HTML, CSS, JS, and image files into the container
COPY . .

# Expose port 80 for the web server
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
