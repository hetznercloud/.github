# Contribution Guideline

## Code of Conduct

This project follows the core values of the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/version/3/0/code_of_conduct/).

## Reporting a bug

1. **Check first** that the bug isn't already filed — search both open and
   closed issues. If you find a match, add a 👍 reaction or a comment with new
   information rather than opening a duplicate.
2. **Use the issue template** for the relevant repo.

## Proposing a change

The kinds of pull requests we welcome:

- **Bug fixes** for clearly identified bugs. The PR description should explain
  what is being fixed and how to verify it. A regression test is expected.
- **New features** that solve a use case shared by a meaningful portion of users.
  **Please open an issue first** and wait for a maintainer to confirm the direction before writing code.
- **Chores**: typos, comment clarifications.
  Multiple typo or comment fixes can be combined into a single PR.

What we'll generally **decline**:

- Stylistic refactors that don't improve performance, correctness, or
  testability. Code style is subjective and large diffs make `git blame` worse.
  We're happy to accept small, principled cleanups alongside other work.
- Changes which result in a breaking change.
- "Drive-by" PRs where the contributor isn't available to address review
  comments.

## Pull request guidelines

- **One concern per PR.** Smaller PRs get faster reviews.
- **Tests are required** for bug fixes (regression test) and new features
  (coverage of the new path).
- **CI must be green** before a PR is merged. If a CI failure looks unrelated
  to your change, comment on the PR rather than force-pushing — a maintainer
  will have a look.
  - ⚠️ A lot of our e2e tests use the [tps-action](https://github.com/hetznercloud/tps-action). This action will fail for unauthorized users. Expect them to fail, if you are not part of our organization. A maintainer will run the e2e tests. If you decide on running them on your own costs, feel free to share the results.
- **Allow edits from maintainers** when you open the PR, so we can rebase or
  make small fixups directly.
- **Don't force-push** after a maintainer has started reviewing. Push new
  commits; we squash on merge.
- **PR titles** should follow the [Conventional Commits](https://www.conventionalcommits.org/) pattern. See [Commit messages](#commit-messages) for more details.
- **Update the PR title and body** if the change drifts during review — the
  title becomes the squash-merge commit message.

### Commit messages

We use [Conventional Commits](https://www.conventionalcommits.org/). The format matters because [releaser-pleaser](https://github.com/apricote/releaser-pleaser) generates our changelogs from it.

```
<type>(<optional scope>): <short imperative summary, ≤72 chars>

<optional longer body explaining the why, wrapped at ~72 chars>

<optional footers, e.g. Fixes #123, BREAKING CHANGE: ...>
```

Common types: `feat`, `fix`, `chore`, `docs`, `test`, `refactor`, `ci`, `build`.
A `feat:` triggers a minor release, a `fix:` triggers a patch release.

Examples:

- `feat(server-type): add support for ARM64 server types`
- `fix(load-balancer): retry transient 503s from the API`
- `docs: clarify token scopes in README`

## AI / LLM policy

You may use AI assistants when contributing, subject to all the following:

1. **Disclose** in the PR description (or issue) that you used an AI tool, and
   which one. One short line is enough.
2. **You are accountable.** You must understand every change you submit well
   enough to explain it, defend it in review, and revise it without further AI
   help if the reviewer asks. PRs from contributors who can't engage with
   review comments will be closed.
3. **Submitted by a human.** PRs must come from a real, human-owned GitHub
   account. We don't accept submissions from bot accounts or unattended agents.
4. **Quality bar is unchanged.** AI-generated boilerplate, half-finished code,
   plausible-but-wrong fixes, or hallucinated APIs will be closed.
5. **Cap on open AI-assisted PRs.** Contributors may have at most
   two open AI-assisted PR(s) at a time. This protects review
   capacity. Maintainers are not subject to this cap.

## Licensing

By submitting a contribution, you agree that it is licensed under the same
licence as the repository you're contributing to. See each repo's `LICENSE`
file.

Thanks for contributing. If something in these guidelines is unclear or seems
to be missing, please open an issue or PR — they apply to themselves.
