#!/bin/sh -l

echo '🎩 Install Jekyll'
gem install bundler jekyll
bundle install
bundle exec jekyll -v || exit 1