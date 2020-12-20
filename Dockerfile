FROM ubuntu
LABEL maintainer="koredream" Author="koredream" Purpose="Test de push dockerfile" autre="test" 
EXPOSE 80
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git nginx
RUN rm -Rf /var/www/html/*
#RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ADD index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
