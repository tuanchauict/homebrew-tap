cask "bento" do
  version "0.2.0"
  sha256 "cbaf7f0eb27dd8f64bc3b31e38dc9e5761ebcd922fbd616b69681d93a17024ae"

  url "https://github.com/tuanchauict/bento/releases/download/v#{version}/OhMyWindows-#{version}.zip"
  name "Oh my windows"
  desc "Window switcher that saves groups of windows as workspaces"
  homepage "https://github.com/tuanchauict/bento"

  depends_on macos: ">= :sonoma"

  app "Oh my windows.app"

  uninstall quit: "org.iamtuna.WindowPair"

  # The folders keep the app's first name, Window Pair.
  zap trash: [
    "~/Library/Application Support/WindowPair",
    "~/Library/Caches/org.iamtuna.WindowPair",
  ]

  caveats <<~EOS
    Oh my windows needs Accessibility access: System Settings > Privacy & Security > Accessibility.
    Window previews also need Screen Recording. Without it the switchers show app icons.
  EOS
end
