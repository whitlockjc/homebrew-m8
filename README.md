# Homebrew tap for M8 tools

This repository provides Homebrew formulae for Dirtywave M8-related tools.

Currently included:

- [m8c](Formula/m8c.rb): Remote display client for the Dirtywave M8 Tracker
  ([laamaa/m8c](https://github.com/laamaa/m8c))

## Installation

```sh
brew tap whitlockjc/m8
brew trust --formula whitlockjc/m8/<short-name>
brew install <short-name>
```

## Updating

```sh
brew update
brew upgrade <short-name>
```

## Formula maintenance

This tap is maintained unofficially. If upstream projects want to own Homebrew
distribution in the future, the relevant formulae can be transferred or moved to
upstream-owned taps. Please file an issue to request a formula transfer.
