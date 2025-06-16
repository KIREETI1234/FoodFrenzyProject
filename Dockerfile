FROM public.ecr.aws/amazoncorretto/amazoncorretto:17

WORKDIR /app

# Copy the JAR from the build context
COPY target/FoodFrenzy-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar", "--server.port=8080"]
