#!/bin/sh

# Set environment variables if needed
export SPRING_DATASOURCE_USERNAME=${SPRING_DATASOURCE_USERNAME:-postgres}
export SPRING_DATASOURCE_PASSWORD=${SPRING_DATASOURCE_PASSWORD:-example}

# Execute the Java application
exec java -jar /app/words.jar
