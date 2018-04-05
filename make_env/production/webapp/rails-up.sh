#!/bin/sh
sh -c "cd ${APP_ROOT} && bundle install --path vendor/bundle" ; \
sh -c "cd ${APP_ROOT} && bundle exec rails db:migrate" ; \
sh -c "cd ${APP_ROOT} && bundle exec rake assets:clobber" ; \
sh -c "cd ${APP_ROOT} && bundle exec rake assets:precompile" ; \
sh -c "cd ${APP_ROOT} && bundle exec puma -C config/puma.rb"