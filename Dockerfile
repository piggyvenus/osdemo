FROM jorgemoralespou/s2i-java:latest

MAINTAINER Shanna Chan “shchan@redhat.com”

EXPOSE 8080
ENV JAVA_OPTS '-Xmx256m'
COPY /osdemo-0.0.1-SNAPSHOT.jar /app/app.jar

WORKDIR /app

ENTRYPOINT exec java $JAVA_OPTS -jar app.jar

CMD ["start"]
