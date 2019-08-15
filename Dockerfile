FROM alpine:latest

ADD poll.sh /opt/scripts

CMD ["sh", "/opt/scripts/poll.sh"]