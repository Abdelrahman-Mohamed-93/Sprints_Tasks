# extend base image of httpd
FROM httpd:latest

#Setting env. variable
ENV CONTAINER=docker

# copy index file
COPY index.html /usr/local/apache2/htdocs/index.html

# copy configuration file
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# expose app
EXPOSE 9999

#Adding startup command to echo the variable
CMD echo $CONTAINER && httpd-foreground


