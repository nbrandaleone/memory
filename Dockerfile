# Use official docker distribution of NGINX
FROM nginx

# Delete the include configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Replace the default configuration file
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Add the HTML content into default directory
COPY content /usr/share/nginx/html
