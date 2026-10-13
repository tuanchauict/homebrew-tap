cask "redline" do
  version "0.8.0"
  sha256 "6a9fced379dd0225bc9ad5ed6eb6a6c9dc20009502aa3d11724c21450b5cf180"

  url "https://github.com/tuanchauict/redlineapp/releases/download/v#{version}/Redline-#{version}-universal.dmg"
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
