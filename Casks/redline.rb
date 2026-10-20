cask "redline" do
  version "0.9.0"
  sha256 "c9f2377b0ebb665456fe8975e911cfbc63c2a3b0c173ed184d29c44918045843"

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
