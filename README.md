# Oumi Homebrew Tap

Homebrew formulae for [Oumi](https://github.com/oumi-ai) tools.

## Install

Homebrew 6.0.0+ requires third-party taps to be trusted before their formulae
are installed. Trust the formula, then install:

```sh
brew trust --formula oumi-ai/tap/oumi-cli
brew install oumi-ai/tap/oumi-cli
```

Or tap once, then install by name:

```sh
brew tap oumi-ai/tap
brew trust --formula oumi-ai/tap/oumi-cli
brew install oumi-cli
```

Upgrade later with:

```sh
brew upgrade oumi-cli
```

## Formulae

| Formula | Description |
| --- | --- |
| `oumi-cli` | Command-line interface for the Oumi platform |

## Supported platforms

- macOS (Apple Silicon / arm64)
- Linux (x86_64, arm64)
