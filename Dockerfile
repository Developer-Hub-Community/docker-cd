# Use the official Nginx image as a base image
FROM nginx:alpine

# Copy custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the HTML file to the Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
