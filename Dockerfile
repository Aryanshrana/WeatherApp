# Use the official Nginx image as the base image
FROM nginx:latest

# Install the Vercel CLI
RUN apt-get update && apt-get install -y nodejs npm && npm install -g vercel

# Copy the HTML, CSS, and JS files to the Nginx server's default location
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY script.js /usr/share/nginx/html/script.js

# Expose the default Nginx port
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]