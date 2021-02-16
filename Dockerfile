FROM 489478819445.dkr.ecr.eu-west-1.amazonaws.com/amazoncorretto:8-alpine-jre

COPY SMPPSim /app

RUN chmod +x /app/startsmppsim.sh

EXPOSE 8884

EXPOSE 2775

WORKDIR /app

CMD ["java", "-Djava.net.preferIPv4Stack=true", "-Djava.util.logging.config.file=conf/logging.properties",  "-jar", "smppsim.jar", "conf/smppsim.props"]
