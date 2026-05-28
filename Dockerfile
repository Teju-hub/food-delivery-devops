FROM nginx:alpine
RUN echo "<h1>PRT - Food Delivery App Deployment Successful</h1>" > /usr/share/nginx/html/index.html
EXPOSE 80