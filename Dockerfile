FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    nodejs\
    libpq-dev \
    build-essential \
    yarn \
    postgresql-client
WORKDIR /product-registerv2
COPY Gemfile Gemfile.lock /product-registerv2/
RUN bundle install