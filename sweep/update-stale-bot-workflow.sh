#!/usr/bin/env bash

# Title: Configure the stale bot workflow

[[ -f .github/workflows/stale.yml ]] || exit 0

echo 'name: Close stale issues

on:
  schedule:
    - cron: "30 12 * * *"

jobs:
  stale:
    permissions:
      issues: write
      pull-requests: write

    uses: hetznercloud/.github/.github/workflows/stale.yml@main' > .github/workflows/stale.yml

git add .
git --no-pager diff --color --cached
