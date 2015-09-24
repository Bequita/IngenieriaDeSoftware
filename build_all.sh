#!/usr/bin/env sh
set -e
cd chopper
bundle install
bundle exec rake
cd ..
cd Piedra-Papel-Tijera-Mono
bundle install
bundle exec rake
