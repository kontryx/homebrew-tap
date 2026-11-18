# kontryx/homebrew-tap

[Homebrew](https://brew.sh) formulas for tools by kontryx.

## Install a tool

```sh
brew install kontryx/tap/<formula>
```

Or tap once, then install any formula by name:

```sh
brew tap kontryx/tap
brew install <formula>
```

Upgrade with `brew update && brew upgrade`.

## Formulas

| Formula | Description |
| --- | --- |
| [`shotctl`](Formula/shotctl.rb) | Keyboard-driven photo import and archive manager ([source](https://github.com/kontryx/shotctl)) |

## Adding a formula

1. Tag `vX.Y.Z` in the tool's repository and publish a GitHub release. The repository must be public.
2. Get the source tarball checksum:

   ```sh
   curl -fsSL https://github.com/kontryx/<tool>/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```

3. Create `Formula/<tool>.rb`. `brew create --tap kontryx/tap <tarball-url>` generates a starting point.
4. Add the tool to the table above.
5. Check it:

   ```sh
   brew audit --strict --online kontryx/tap/<tool>
   brew install --build-from-source kontryx/tap/<tool>
   brew test kontryx/tap/<tool>
   ```

## Releasing a new version of a tool

Update `url` and `sha256` in `Formula/<tool>.rb` using the steps above, then run the same checks.
