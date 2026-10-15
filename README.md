# tuanchauict/homebrew-tap

A Homebrew tap. Two casks in it.

## Redline

A markdown reader with a memory. It renders a `.md` file off your disk the way you
expect, and because it snapshots every version it has shown you, it can also diff the
current text against the one you last read and mark the paragraphs that moved. No git
commits, and nothing written next to your file.

```
brew install --cask tuanchauict/tap/redline
```

<https://redline.pages.dev>

## Oh my windows

A menu bar app that saves groups of windows as workspaces and brings a whole workspace
forward in one step, each window back at its position and size. It also has an
AltTab-style switcher for jumping to any window on any desktop.

```
brew install --cask tuanchauict/tap/oh-my-windows
```

<https://github.com/tuanchauict/oh-my-windows>

## Releasing a new version

### Redline

The dmg is built, signed and notarized by CI on a `vN.N.N` tag and uploaded to R2
under a versioned filename, with its checksum beside it. So a release here is two
lines in `Casks/redline.rb`:

```
curl -s https://dl.iamtuna.org/redline/Redline-<version>-universal.dmg.sha256
```

that hash into `sha256`, the new number into `version`, and push. `url` is built
from `version`, so it needs no edit.

### Oh my windows

`scripts/release.sh --publish` in the app's repo does all of it: it builds, signs and
notarizes the zip, uploads it to a release in `tuanchauict/oh-my-windows`, and rewrites
`Casks/oh-my-windows.rb` here with the new version and checksum.
