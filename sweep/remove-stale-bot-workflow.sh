#!/usr/bin/env bash

# Title: Remove the stale bot workflow

WORKFLOW_FILE=.github/workflows/stale.yml

[[ -f "$WORKFLOW_FILE" ]] || exit 0

rm -f "$WORKFLOW_FILE"

git add "$WORKFLOW_FILE"
git --no-pager diff --color --cached
