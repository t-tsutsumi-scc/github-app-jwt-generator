FROM ruby:3.4.1-alpine

RUN apk upgrade --no-cache; \
    gem install jwt
COPY app.ruby /

ENTRYPOINT ["/usr/local/bin/ruby", "/app.ruby"]
