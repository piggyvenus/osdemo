FROM redhat-openjdk-18/openjdk18-openshift

MAINTAINER Shanna Chan “shchan@redhat.com”

EXPOSE 8080
ENV JAVA_OPTS '-Xmx256m'
COPY /osdemo-0.0.1-SNAPSHOT.jar /app.jar

WORKDIR /

ENTRYPOINT exec java $JAVA_OPTS -jar app.jar

CMD ["start"]
