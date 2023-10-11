#!/usr/bin/env bash

# Title: Configure the renovate bot config

set -eu

if [[ -f renovate.json5 ]]; then
  npx json5 renovate.json5 > renovate.json
  rm renovate.json5
fi

if [[ ! -f renovate.json ]]; then
  echo "renovate config not found"
  exit 0
fi

edit_renovate() {
  TMP_FILE="$(mktemp XXX.json)"
  jq "$@" renovate.json > "$TMP_FILE"
  mv "$TMP_FILE" renovate.json
}

# shellcheck disable=SC2016
edit_renovate '."$schema" = "https://docs.renovatebot.com/renovate-schema.json"'
edit_renovate '."extends" = ["github>hetznercloud/.github//renovate/default"]'

npx prettier --write renovate.json

git add .
git --no-pager diff --color --cached
