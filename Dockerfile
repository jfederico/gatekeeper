FROM ruby:2.5.1

# app dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV RAILS_ENV=production \
    APP_HOME=/usr/src/app


RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Add the greenlight app
ADD . $APP_HOME
EXPOSE 3000

# Install app dependencies
RUN bundle install --without development test doc --deployment --clean
RUN bundle exec rake assets:precompile --trace

CMD /usr/src/app/scripts/start.sh
