cask "bento" do
  version "1.0.1"
  sha256 "0e831a49f448294c7ffaa15d87e86f13c9a5273c89b0c5b75946a00d8b2ccf70"

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
