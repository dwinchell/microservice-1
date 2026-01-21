# OpenShift 4.20 httpd:latest as of 01/21/2025
FROM registry.redhat.io/ubi8/httpd-24@sha256:3361e11fa95f0a201ec20079bb63a27b31bf1034fc28217d34a415456b88b98c

ENV HTML_TITLE="Hello World!"

ADD src/* /var/www/html

USER 0
RUN chmod 666 /var/www/html/*
USER 1001

CMD sh -c "sed -i \"s/PLACEHOLDER_TITLE/$HTML_TITLE/\" /var/www/html/index.html && run-httpd"

