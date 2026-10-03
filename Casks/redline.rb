cask "redline" do
  version "0.1.0"
  sha256 "bfa32d19908782aea5f49e5e60c132ae6d67af80f4975f5e9b150806d2651788"

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
