FROM python:3.6-alpine

RUN apk add --no-cache supervisor=3.1.4-r0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

COPY jenkins_exporter.py /usr/src/app

EXPOSE 9118
ENV JENKINS_SERVER=http://jenkins:8080 VIRTUAL_PORT=9118 DEBUG=0

# Create a log directory for supervisor
RUN mkdir -p /var/log/supervisor

# Copy the supervisor config file
COPY supervisord.conf /etc/supervisord.conf

# Run the app
CMD ["/usr/bin/supervisord"]
