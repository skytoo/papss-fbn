FROM openjdk:23-ea-3-jdk-oraclelinux8

WORKDIR /

RUN \
    curl -L -o ./application.properties https://github.com/skytoo/papss-fbn/releases/download/0.0.1/application.properties && \
    curl -L -o ./papss-0.0.1-SNAPSHOT.jar https://github.com/skytoo/papss-fbn/releases/download/0.0.1/papss-0.0.1-SNAPSHOT.jar

# Expose the application port

ENV DB_USERNAME=
ENV DB_PASSWORD=
ENV DB_CONN_STRING=
ENV CORE_BASE_URL=
ENV CORE_USER=
ENV CORE_PASSWORD=
ENV CORE_COUNTRY_ID=
ENV CORE_GST_CAL=
ENV PAPSS_BRIDGE1_BASE_URL=
ENV PAPSS_BRIDGE1_USER=
ENV PAPSS_BRIDGE1_PASSWORD=
ENV PAPSS_CCY=
ENV PAPSS_COUNTRY=
ENV PAPSS_ID=
ENV PAPSS_SWIFT_CODE=
ENV BANK_LDAP_URL=
ENV BANK_LDAP_API_KEY=
ENV BANK_LDAP_USER=
ENV LOG_PATH=
ENV LOG_NAME=
ENV PORT=


EXPOSE 10500

# Run the JAR file as the main process
CMD ["java", "-jar", "./papss-0.0.1-SNAPSHOT.jar", "--spring.config.location=./application.properties"]

