FROM ruby

WORKDIR /blog

RUN gem install rails
RUN rails new /blog

CMD rm -rf tmp/pids/server.pid && exec bin/rails server -b 0.0.0.0
