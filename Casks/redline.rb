cask "redline" do
  version "0.3.0"
  sha256 "f2a5ed67cf906f2d8936a1732563b4d30b06ca69aad39eeea25e7e0c087e606b"

  url "https://dl.iamtuna.org/redline/Redline-#{version}-universal.dmg"
  name "Redline"
  desc "Markdown reader that marks what changed since you last read"
  homepage "https://redline.pages.dev/"

  depends_on macos: ">= :big_sur"

  app "Redline.app"

  # The app reads your markdown and never writes beside it, but it does keep a
  # store of its own: every version of every file it has shown you, which is
  # what the change marks are diffed against.
  zap trash: [
    "~/.redline",
    "~/Library/Application Support/com.redline.reader",
    "~/Library/Caches/com.redline.reader",
    "~/Library/Saved Application State/com.redline.reader.savedState",
    "~/Library/WebKit/com.redline.reader",
  ]
end
