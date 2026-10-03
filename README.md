# tuanchauict/homebrew-tap

A Homebrew tap. One cask in it.

## Redline

A markdown reader with a memory. It renders a `.md` file off your disk the way you
expect, and because it snapshots every version it has shown you, it can also diff the
current text against the one you last read and mark the paragraphs that moved. No git
commits, and nothing written next to your file.

```
brew install --cask tuanchauict/tap/redline
```

<https://redline.pages.dev>

## Releasing a new version

The dmg is built, signed and notarized by CI on a `vN.N.N` tag and uploaded to R2
under a versioned filename, with its checksum beside it. So a release here is two
lines in `Casks/redline.rb`:

```
curl -s https://dl.iamtuna.org/redline/Redline-<version>-universal.dmg.sha256
```

that hash into `sha256`, the new number into `version`, and push. `url` is built
from `version`, so it needs no edit.
