cask "bento" do
  version "0.3.0"
  sha256 "18a59887f0acff1fc4f240074a9264c30df5f86313100ab2bea7c5e16f039d09"

  url "https://github.com/tuanchauict/bento/releases/download/v#{version}/Bento-#{version}.zip"
  name "Bento"
  desc "Window switcher that saves groups of windows as workspaces"
  homepage "https://github.com/tuanchauict/bento"

  depends_on macos: ">= :sonoma"

  app "Bento.app"

  uninstall quit: "org.iamtuna.WindowPair"

  # The folders keep the app's first name, Window Pair.
  zap trash: [
    "~/Library/Application Support/WindowPair",
    "~/Library/Caches/org.iamtuna.WindowPair",
  ]

  caveats <<~EOS
    Bento needs Accessibility access: System Settings > Privacy & Security > Accessibility.
    Window previews also need Screen Recording. Without it the switchers show app icons.
  EOS
end
