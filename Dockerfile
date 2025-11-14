# Use an official Tomcat image with JDK 11
FROM tomcat:9-jdk11

# Copy the WAR file to Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat runs on
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
