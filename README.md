# Julia Development Container Feature

Installs the Julia programming language into a [development container](https://containers.dev/).

## Example Usage

```json
"features": {
    "ghcr.io/julialang/devcontainer-features/julia:1": {}
}
```

## Options

You can select a specific Julia version by specifying a [Juliaup](https://github.com/julialang/juliaup) channel name as an option. For example, the following installs the LTS Julia release:

```json
"features": {
    "ghcr.io/julialang/devcontainer-features/julia:1": {
        "channel": "lts"
    }
}
```
