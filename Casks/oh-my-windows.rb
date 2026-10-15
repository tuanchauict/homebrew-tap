cask "oh-my-windows" do
  version "0.1.0"
  sha256 "90ca57295030cb813ddb0f7cad6e691b1cee9a6b0dea389fd4ce3f68edf0f11a"

  url "https://github.com/tuanchauict/oh-my-windows/releases/download/v#{version}/OhMyWindows-#{version}.zip"
  name "Oh my windows"
  desc "Window switcher that saves groups of windows as workspaces"
  homepage "https://github.com/tuanchauict/oh-my-windows"

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
