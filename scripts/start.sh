#!/bin/bash

bundle exec rake db:exists && bundle exec rake db:migrate || bundle exec rake db:setup
bundle exec rails s