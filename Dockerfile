FROM sonarqube:5.6.3
MAINTAINER Stefan Dimitrov <stefan.dimitrov@evinance.com>

COPY assets/init /app/init
RUN chmod 755 /app/init

VOLUME /opt/sonarqube/extensions
VOLUME /opt/sonarqube/logs

ENTRYPOINT ["/app/init"]
CMD ["app:start"]
