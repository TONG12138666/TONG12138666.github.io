#!/usr/bin/env bash
set -euo pipefail

BUNDLE_BIN="${HOME}/.gem/ruby/2.6.0/bin/bundle"

if [ -x "${BUNDLE_BIN}" ]; then
  GEM_HOME="${HOME}/.gem/ruby/2.6.0" \
  GEM_PATH="${HOME}/.gem/ruby/2.6.0" \
  "${BUNDLE_BIN}" _2.2.19_ exec jekyll liveserve
else
  bundle exec jekyll liveserve
fi
