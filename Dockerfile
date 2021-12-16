FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client vim

RUN mkdir /rails_tut

WORKDIR /rails_tut

COPY Gemfile /rails_tut/Gemfile
COPY Gemfile.lock /rails_tut/Gemfile.lock

RUN bundle install

COPY . /rails_tut