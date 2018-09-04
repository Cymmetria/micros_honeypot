# Build stage
FROM alpine:3.6 AS builder

RUN apk add --no-cache python3
	
RUN python3 -m venv /app

COPY . /app/src/

RUN /app/bin/pip install -r /app/src/requirements.txt
RUN chown -R nobody:nobody /app


# Prod stage
FROM alpine:3.6

RUN apk add --no-cache python3

COPY --from=builder /app /app

WORKDIR /app/micros_honeypot
EXPOSE 8080
USER nobody

ENV PYTHONUNBUFFERED=1

CMD ["/app/bin/python3", "micros_server.py", "--verbose"]