FROM ruby:2.5.1-alpine
RUN apk update && apk add \
  build-base \
  postgresql-dev \
  libcurl \
  netcat-openbsd \
  nodejs \
  yarn \
  ffmpeg \
  imagemagick

CMD mkdir /app
WORKDIR /app
COPY Gemfile /app
COPY Gemfile.lock /app

RUN gem install bundler -v 1.16.1
RUN bundle install

