# homebrew-shotctl

Homebrew tap for [shotctl](https://github.com/kontryx/shotctl), a keyboard-driven terminal app for importing photos from your SD card.

## Install

```sh
brew install kontryx/shotctl/shotctl
```

Or tap first:

```sh
brew tap kontryx/shotctl
brew install shotctl
```

## Upgrade

```sh
brew update
brew upgrade shotctl
```

## Releasing a new version

1. Tag `vX.Y.Z` in `kontryx/shotctl` and publish a GitHub release.
2. Compute the tarball checksum:

   ```sh
   curl -fsSL https://github.com/kontryx/shotctl/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```

3. Update `url` and `sha256` in `Formula/shotctl.rb`, then run:

   ```sh
   brew audit --strict --online kontryx/shotctl/shotctl
   brew install --build-from-source kontryx/shotctl/shotctl
   brew test kontryx/shotctl/shotctl
   ```
