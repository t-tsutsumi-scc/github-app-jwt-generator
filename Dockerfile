FROM ruby:3.3.5-alpine

RUN apk upgrade --no-cache; \
    gem install jwt
COPY app.ruby /

ENTRYPOINT ["/usr/local/bin/ruby", "/app.ruby"]
