cask "claudoscope" do
  version "0.4.2"
  sha256 "fffcf7a74c9708e00899c6a0216a0f5218934da3bb41c9e89e59d0287b723845"

  url "https://dl.claudoscope.com/v0.4.2/Claudoscope.dmg",
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
