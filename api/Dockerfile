
# smaller, final base image
FROM openjdk:11-jre-bullseye

# copy over the built artifact from the maven image
COPY $PWD/target/wallet-*.jar ./app.jar

# set the startup command to run your binary
ENTRYPOINT ["java", "-jar"]
CMD ["./app.jar"]
