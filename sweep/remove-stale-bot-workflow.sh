#!/usr/bin/env bash

# Title: Remove the stale bot workflow

WORKFLOW_FILE=.github/workflows/stale.yml

[[ -f "$WORKFLOW_FILE" ]] || exit 0

rm -f "$WORKFLOW_FILE"

git add .
git --no-pager diff --color --cached
