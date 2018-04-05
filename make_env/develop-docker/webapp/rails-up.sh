#!/bin/sh
sh -c "cd ${APP_ROOT} && bundle install --path vendor/bundle" ; \
sh -c "cd ${APP_ROOT} && bundle exec rails db:migrate" ; \
sh -c "cd ${APP_ROOT} && bundle exec rails s -b 0.0.0.0"