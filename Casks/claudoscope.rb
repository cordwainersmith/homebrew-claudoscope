cask "claudoscope" do
  version "0.5.0"
  sha256 "07b38ddceb148bbf7d7243a1bf25ccbce56c47894db48e9c0fb39380b3e04bde"

  url "https://dl.claudoscope.com/v0.5.0/Claudoscope.dmg",
      verified: "dl.claudoscope.com/"
  name "Claudoscope"
  desc "macOS menu bar companion for Claude Code sessions"
  homepage "https://github.com/cordwainersmith/Claudoscope"
  auto_updates true

  depends_on macos: ">= :sonoma"

  app "Claudoscope.app"

  zap trash: [
    "~/Library/Caches/com.claudoscope.app",
    "~/Library/Preferences/com.claudoscope.app.plist",
  ]
end
