FROM nginx:stable-alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy site files into nginx web root. .dockerignore prevents YAML files from being sent in the build context.
COPY . /usr/share/nginx/html/

# Expose standard HTTP port
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
