cask "claudoscope" do
  version "0.6.2"
  sha256 "346170dd1f30be6399affd172d5debe0fbbb824dac5e2759236501ac8d97247a"

  url "https://dl.claudoscope.com/v0.6.2/Claudoscope.dmg",
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
