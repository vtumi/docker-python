FROM python:3.10-alpine3.21

# Install packages
RUN apk add --no-cache \
  tzdata \
  supervisor

STOPSIGNAL SIGQUIT

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
