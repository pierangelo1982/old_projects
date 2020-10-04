FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /usr/src/energyetika_gestionale
WORKDIR /usr/src/energyetika_gestionale
ADD Gemfile /usr/src/energyetika_gestionale/Gemfile
ADD Gemfile.lock /usr/src/energyetika_gestionale/Gemfile.lock
RUN bundle install
ADD . /usr/src/energyetika_gestionale
RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
