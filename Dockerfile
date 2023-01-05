FROM $JDK
VOLUME /tmp

ADD target/backend-order-service-0.0.2.jar /app.jar
ADD Docker-EntryPoint.sh /Docker-EntryPoint.sh
RUN chmod +x /Docker-EntryPoint.sh
ENV APP_NAME chenjie-dev-helloworld
ENTRYPOINT ["/Docker-EntryPoint.sh"]