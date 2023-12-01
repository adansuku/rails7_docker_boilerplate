# ENV RUBY_VERSION=3.1.0
FROM --platform=linux/amd64 ruby:3.1.0

WORKDIR /usr/src/app

# Installing dp
RUN apt-get update -qq && \
    apt-get install -y default-libmysqlclient-dev build-essential libpq-dev redis-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# # Bundler version
# # ENV BUNDLER_VERSION=2.3.3
# # RUN gem install bundler -v $BUNDLER_VERSION

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./
COPY config/sidekiq.yml ./config/

RUN bundle install

COPY . .
CMD ["rails", "server", "-b", "0.0.0.0"]

