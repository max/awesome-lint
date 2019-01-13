# `awesome-lint` as a GitHub Action

There are many awesome lists on GitHub. This [GitHub
Action](https://github.com/features/actions) uses
[sindresorhus](https://github.com/sindresorhus) to lint those repositories and
keep them consistent.

## Example

```
workflow "Lint Awesome List" {
  on = "push"
  resolves = ["max/awesome-lint"]
}

action "max/awesome-lint" {
  uses = "max/awesome-lint@master"
}
```
