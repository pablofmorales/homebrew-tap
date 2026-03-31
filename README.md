# pablofmorales Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [pablofmorales](https://github.com/pablofmorales) CLI tools.

## Setup

```bash
brew tap pablofmorales/tap
```

## Available Formulae

| Formula | Description | npm package |
|---------|-------------|-------------|
| `mac-cleaner` | Fast, safe CLI for cleaning macOS development caches | `@blackasteroid/mac-cleaner-cli` |
| `kuma-cli` | CLI for managing [Uptime Kuma](https://github.com/louislam/uptime-kuma) | `@blackasteroid/kuma-cli` |
| `icf` | Incident Command Framework — manage incidents via GitHub Issues | `@blackasteroid/icf` |

## Install

```bash
# Install all
brew install pablofmorales/tap/mac-cleaner pablofmorales/tap/kuma-cli pablofmorales/tap/icf

# Or if tap is already added:
brew install mac-cleaner kuma-cli icf
```

## Usage

### mac-cleaner

```bash
mac-cleaner all --dry-run    # Preview what would be cleaned
mac-cleaner all              # Clean everything
mac-cleaner system           # Just system caches and logs
```

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
brew update && brew upgrade mac-cleaner kuma-cli icf
```
