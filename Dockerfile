FROM centos:7
RUN yum install epel-release -y
RUN yum install nginx -y
CMD systemctl start nginx
CMD systemctl enable nginx 
RUN mkdir -p /var/www/html/default/images
COPY index.html /var/www/html/default/
COPY red.png /var/www/html/default/images/
COPY blue.jpg /var/www/html/default/images/
ADD https://github.com/psvitov/nginx/blob/main/default /etc/nginx/sites-available/
CMD systemctl restart nginx
