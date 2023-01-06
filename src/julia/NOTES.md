## Options

You can select a specific Julia version by specifying a [Juliaup](https://github.com/julialang/juliaup) channel name as an option. For example, the following installs the LTS Julia release:

```json
"features": {
    "ghcr.io/julialang/devcontainer-features/julia:1": {
        "channel": "lts"
    }
}
```

`channel` can be also specified as a Julia version, such as `1.5.4`, `1.5`, `1`.
Check the Juliaup documentation for details.
