FROM tomcat:9-jdk11

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat
COPY healthy-hens.war /usr/local/tomcat/webapps/

EXPOSE 2020

CMD ["catalina.sh", "run"]
