FROM maven:3.9.6-eclipse-temurin-11
COPY . .
RUN mvn install -DskipTests
RUN mvn package -DskipTests
CMD java -jar target/springboot-0.0.1-SNAPSHOT.jar
