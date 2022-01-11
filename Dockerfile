#FROM maven:3.6.1-jdk-8-alpine
FROM maven:3.8.4-openjdk-17-slim
ENV	JMETER_HOME	/opt/jmeter
WORKDIR $JMETER_HOME
COPY src .
ARG pom
COPY $pom .
RUN mvn install
