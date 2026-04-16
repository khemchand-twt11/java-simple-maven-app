FROM alpine/java:22-jdk

EXPOSE 8080

ENv APP_HOME /user/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"] 


