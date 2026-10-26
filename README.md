# pal4de Homebrew Casks

Independent Homebrew **Cask** definitions for GUI applications. A Tap is the repository holding these definitions; Cask is the package type used to install an application bundle.

## Release preparation — not installable yet

The initial Soniclet cask is under draft review. Its download URL will become valid only after the matching GitHub Release is published. The current checksum matches the locally Developer ID signed/notarized 0.7.8 (22) ZIP, SHA-256 `85818d2d666d93494ac082d36b5b03f0905991e3a229ac4db1c8accf5477f019`. Apple accepted submission `f4984dae-751b-4e6e-a2d2-a43f0eb20e2e`; stapling, extracted-archive signature and Gatekeeper verification passed. The exact same ZIP must be published at the cask URL before merging; regenerate the checksum if the archive changes. No release has been published by creating this repository.

After that release and the cask are public on `main`:

```sh
brew install --cask pal4de/tap/soniclet
brew upgrade --cask pal4de/tap/soniclet
brew uninstall --cask pal4de/tap/soniclet
```

The cask downloads the same universal ZIP distributed by [Soniclet](https://github.com/pal4de/soniclet). It does not compile a separate app or disable Gatekeeper. Use either the direct/Homebrew installation or the Mac App Store installation; do not run duplicate copies.

## Updating Soniclet

Use Soniclet's `Tools/make-homebrew-cask.py` on the exact final `Soniclet-universal.zip` and copy its output to `Casks/soniclet.rb`. See [the distribution procedure](https://github.com/pal4de/soniclet/blob/main/docs/HOMEBREW.md) after the application implementation PR merges.

Open a PR, verify the published URL, checksum, version, both architectures, Developer ID signature and notarization, and run Homebrew's style/online audit checks before merging. A Ruby syntax or style check does not verify a downloaded release or installation. Regenerate the cask if the archive changes; do not use `sha256 :no_check`.

Uninstall preserves settings. Explicit `--zap` removes direct-download preferences, leaving the App Store container alone.
