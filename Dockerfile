FROM ruby:3.4.2-bookworm
RUN apt update -qq && apt install -y build-essential libpq-dev nodejs default-mysql-client vim
RUN mkdir /fpb-indus
WORKDIR /fpb-indus