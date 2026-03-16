cask "claudoscope" do
  version "0.4.5"
  sha256 "9362aeeb2f3826a363c605cf2e19552a798686374c83c1e8e17fa72d97ee5004"

  url "https://dl.claudoscope.com/v0.4.5/Claudoscope.dmg",
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
