cask "bento" do
  version "1.0.0"
  sha256 "ee1b76e5d74b5dab155a97d7de6af3531e4943c21ebef92deb783c591d4a39d0"

  url "https://github.com/tuanchauict/bento/releases/download/v#{version}/Bento-#{version}.zip"
  name "Bento"
  desc "Window switcher that saves groups of windows as workspaces"
  homepage "https://github.com/tuanchauict/bento"

  depends_on macos: ">= :sonoma"

  app "Bento.app"

  uninstall quit: "org.iamtuna.WindowPair"

  # The folders keep the app's first name, Window Pair. The preferences hold when updates were last checked.
  zap trash: [
    "~/Library/Application Support/WindowPair",
    "~/Library/Caches/org.iamtuna.WindowPair",
    "~/Library/Preferences/org.iamtuna.WindowPair.plist",
  ]

  caveats <<~EOS
    Bento needs Accessibility access: System Settings > Privacy & Security > Accessibility.
    Window previews also need Screen Recording. Without it the switchers show app icons.
  EOS
end
