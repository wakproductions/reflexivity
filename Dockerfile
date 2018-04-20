FROM ruby:2.5.0
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs # Node is needed for certain Javascript add-ons like Uglifier of Coffee-rails
RUN apt-get install -y npm
RUN apt-get install -y netcat # Needed for wait-for-database.sh script
RUN npm install yarn -g

CMD mkdir /app
WORKDIR /app
COPY Gemfile /app
COPY Gemfile.lock /app

RUN gem install bundler -v 1.16.1
RUN bundle install

