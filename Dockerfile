# Use official Tomcat image with Java 17 (or choose the version you need)
FROM tomcat:10.1-jdk17

# Remove default webapps to keep container clean (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file or the exploded webapp to Tomcat webapps folder
# Assuming you have a WAR build in target/currencyConverter.war
COPY target/currencyConverter.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for web traffic
EXPOSE 8080

# Default command to run Tomcat server
CMD ["catalina.sh", "run"]
