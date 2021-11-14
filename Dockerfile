FROM rabbitmq

# Define environment variables.
ENV RABBITMQ_USER admin
ENV RABBITMQ_PASSWORD admin
ENV RABBITMQ_PID_FILE /var/lib/rabbitmq/mnesia/rabbitmq

ADD init.sh rabbitmq/init.sh
RUN chmod +x rabbitmq/init.sh
EXPOSE 15671 15672

# Define default command
CMD ["rabbitmq/init.sh"]