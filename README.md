# BlackAsteroid Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [Black Asteroid](https://github.com/BlackAsteroid) CLI tools.

## Setup

```bash
brew tap BlackAsteroid/tap
```

## Available Formulae

| Formula | Description | npm package |
|---------|-------------|-------------|
| `kuma-cli` | CLI for managing [Uptime Kuma](https://github.com/louislam/uptime-kuma) | `@blackasteroid/kuma-cli` |
| `icf` | Incident Command Framework — manage incidents via GitHub Issues | `@blackasteroid/icf` |

## Install

```bash
# Install both
brew install BlackAsteroid/tap/kuma-cli BlackAsteroid/tap/icf

# Or if tap is already added:
brew install kuma-cli icf
```

## Usage

### kuma-cli

```bash
kuma login https://kuma.example.com
kuma monitors list
```

### icf

```bash
icf auth login
icf init my-org/incidents --create
icf incident create --severity P1 --service api --title "Latency spike"
```

## Updating

Formulae are automatically updated when a new release is published. To update manually:

```bash
brew update && brew upgrade kuma-cli icf
```
