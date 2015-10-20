#!/usr/bin/env sh
set -e
cd chopper
bundle install
bundle exec rake
cd ..
cd Piedra-Papel-Tijera-Mono
bundle install
bundle exec rake
cd ..
cd batalla-naval
bundle install
bundle exec rake
cd ..
cd padrino_quickstart
bundle install
bundle exec rake
