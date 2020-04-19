## Use of-watchdog:
FROM openfaas/of-watchdog:0.7.2 as watchdog

## Use gotenberg image as the base image:
FROM thecodingmachine/gotenberg:6.2.0

## Define the version:
LABEL com.telostat.docker.images.openfaas.gotenberg="0.0.1"

## Switch to root user temporarily:
USER root

## Copy watchdog and make it executable:
COPY --from=watchdog /fwatchdog /usr/bin/fwatchdog
RUN chmod +x /usr/bin/fwatchdog

## Switch back to goteberg user:
USER gotenberg

## Set up of-watchdog:
ENV cgi_headers="true"
ENV fprocess="/tini -s -- gotenberg"
ENV mode="http"
ENV upstream_url="http://127.0.0.1:3000"

## Setup healthcheck:
HEALTHCHECK --interval=3s CMD [ -e /tmp/.lock ] || exit 1

## Set the command:
CMD ["fwatchdog"]
