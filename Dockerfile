FROM eclipse-temurin:25-jdk

WORKDIR /app

COPY ./target/OrderService03-0.0.1-SNAPSHOT.jar ./OrderService03.jar

EXPOSE 8081

CMD ["java", "-jar", "OrderService03.jar"]