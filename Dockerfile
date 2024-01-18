FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y vim

RUN mkdir /blog
WORKDIR /blog
COPY Gemfile /blog/Gemfile
COPY Gemfile.lock /blog/Gemfile.lock

RUN gem update --system
RUN bundle update --bundler

RUN bundle install
COPY . /blog

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
