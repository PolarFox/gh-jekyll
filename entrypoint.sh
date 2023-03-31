#!/usr/bin/env bash

echo 'Install Jekyll'
gem install bundler jekyll
bundle install
bundle exec jekyll -v || exit 1

echo 'Clean site'
if [ -d "dest" ]; then
    rm -rf dest/*
fi

echo 'Build site'
bundle exec jekyll build -d dest
