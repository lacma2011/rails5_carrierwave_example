#!/bin/bash

#carrierwave storage
mkdir -p public/uploads

bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup

rm -f tmp/pids/server.pid && bundle exec rails server -b $HOST
