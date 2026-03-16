cask "claudoscope" do
  version "0.4.1"
  sha256 "a61d18f2f62b1f01f66b6e84b41bc493a7b4a355f36b091abf7ddfdec087e1a3"

  url "https://dl.claudoscope.com/v0.4.1/Claudoscope.dmg",
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
