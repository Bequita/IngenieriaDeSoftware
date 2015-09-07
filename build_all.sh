#!/usr/bin/env sh
set -e
cd chopper
bundle install
bundle exec rake
