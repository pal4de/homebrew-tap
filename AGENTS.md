# Tap maintenance

- Keep these GUI packages as declarative Homebrew Casks. Prefer standard `app`, `depends_on`, `uninstall` and `zap` stanzas to custom installer scripts.
- Soniclet uses its existing GitHub Releases direct-download universal ZIP, not the App Store build or a second compilation.
- Derive version and SHA-256 from the exact final archive using the generator in pal4de/soniclet. Never invent a hash, use `:no_check`, or mark a notification-only app as `auto_updates`.
- Do not remove quarantine, weaken Gatekeeper, or run downloaded executables during review. Verify Developer ID/notarization separately from Ruby syntax/style.
- The current draft cask matches the locally notarized 0.7.7 archive recorded in README.md. Do not merge until that exact archive is public in the matching reviewed release; regenerate the cask if the archive changes.
- Keep updates in PRs. Do not publish app releases or merge automatically. Do not add cross-repository credentials just to update a small definition.
- Normal uninstall preserves user settings. Keep `zap` limited to the direct-download application; do not delete another distribution's container.
