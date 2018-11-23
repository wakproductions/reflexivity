FROM ruby:2.5.1-alpine
RUN apk update && apk add \
  build-base \
  postgresql-dev \
  git \
  openssh \
  less \
  libcurl \
  netcat-openbsd \
  nodejs \
  yarn \
  ffmpeg \
  imagemagick

WORKDIR /app
COPY Gemfile /app
COPY Gemfile.lock /app
COPY . /app

RUN gem install bundler -v 1.16.1
RUN bundle install

