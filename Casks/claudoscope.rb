cask "claudoscope" do
  version "0.4.7"
  sha256 "20769c8d147d7cda6cd3e517f76061704b18c0f9c72c888606b9b49db20e0264"

  url "https://dl.claudoscope.com/v0.4.7/Claudoscope.dmg",
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
