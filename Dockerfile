FROM maven:3.8.1-ibmjava-8-alpine
ENV	JMETER_HOME	/opt/jmeter
WORKDIR $JMETER_HOME
COPY src .
ARG script
COPY $script .
ARG pom
COPY $pom .
RUN mvn install