FROM ruby

WORKDIR /blog

COPY Gemfile Gemfile.lock ./

RUN bundle

CMD rm -rf tmp/pids/server.pid && exec bin/rails server -b 0.0.0.0
