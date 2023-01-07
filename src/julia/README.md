

# Julia (via Juliaup) (julia)

Install the Julia programming language

## Example Usage

```json
"features": {
    "ghcr.io/julialang/devcontainer-features/julia:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| channel | Select a Juliaup channel | string | release |

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


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/JuliaLang/devcontainer-features/blob/main/src/julia/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
