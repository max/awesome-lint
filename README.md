# `awesome-lint` as a GitHub Action

There are many awesome lists on GitHub. This [GitHub
Action](https://github.com/features/actions) uses
[sindresorhus](https://github.com/sindresorhus)'s [awesome-lint](https://github.com/sindresorhus/awesome-lint) to lint those repositories and
keep them consistent.

## Example

```yaml
steps:
  - uses: actions/checkout@v1.0.0
    with:
      fetch-depth: 0 # fetch repo history
  - uses: max/awesome-lint@v2.0.0
    with:
      filename: README.md # optional
```
