# Sweep

Apply sweeping changes on our repositories.

## Requirements

You need to install `multi-gitter` to run sweeping changes:

```bash
go install github.com/lindell/multi-gitter@latest
```

### Examples

Apply `sweep/update-stale-bot-workflow.sh`:

```bash
export GITHUB_TOKEN=ghp_example_token
multi-gitter run \
  --config "sweep/multi-gitter.yml" \
  --branch "update-stale-bot-workflow" \
  --commit-message "ci: update stale bot workflow" \
  sweep/update-stale-bot-workflow.sh
```
