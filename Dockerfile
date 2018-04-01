FROM ruby:2.5

RUN curl -s -o /tmp/rbspy.tar.gz -L  https://github.com/rbspy/rbspy/releases/download/v0.2.3/rbspy-v0.2.3-x86_64-unknown-linux-musl.tar.gz
RUN tar -C /bin -xzf /tmp/rbspy.tar.gz

RUN mkdir -p /app
WORKDIR /app

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile /app/
COPY Gemfile.lock /app/
RUN bundle config --global frozen 1
RUN bundle install --without development test

COPY . /app

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
