# pre-commit hooks

Defines Git pre-commit hooks intended for use with [pre-commit](http://pre-commit.com/). The currently supported hooks are:

- branch-validate: Enforce `git` branch name for all repositories.

## General Usage

In each repos, add a file called `.pre-commit-config.yaml` with the following:

```yaml
repos:
  - repo: https://github.com/clairBuoyant/pre-commit
    rev: <VERSION> # Find latest from: https://github.com/clairBuoyant/pre-commit/releases
    hooks:
      - id: branch-validate
```

Every developer should also install `pre-commit` locally:

1. Install [pre-commit](http://pre-commit.com/).
   - Homebrew: `brew install pre-commit`
   - Poetry (for [server](https://github.com/clairBuoyant/server)): `poetry install`
2. Run `pre-commit install` in repository.

Now every time a commit is made, the hooks specified in `.pre-commit-config.yaml` will execute.

## License

This code is released under the GNU 3.0 License. Please see [LICENSE](./LICENSE) for more details.
