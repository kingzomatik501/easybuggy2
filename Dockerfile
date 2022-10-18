FROM maven:3.8-jdk-8 as builder
WORKDIR /usr/scr/easybuggy
COPY . /usr/scr/easybuggy
RUN mvn -B package

FROM openjdk:8-slim
COPY --from=builder /usr/src/easybuggy/target/easybuggy.jar /
CMD [ "java", "-jar", "easybuggy.jar"]