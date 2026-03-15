cask "claudoscope" do
  version "0.3.5"
  sha256 "c7a45c47cae84fff9dac9cd55797e900fca007d4a3945325aa50cc1b67400b8e"

  url "https://github.com/cordwainersmith/Claudoscope/releases/download/v#{version}/Claudoscope.dmg"
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
