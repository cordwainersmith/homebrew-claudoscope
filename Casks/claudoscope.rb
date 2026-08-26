cask "claudoscope" do
  version "1.1.0"
  sha256 "0c49ff582784a12229858b282b3b4c9ce96dc5f7af1e2e64425c1721529500aa"

  url "https://dl.claudoscope.com/v1.1.0/Claudoscope.dmg",
      verified: "dl.claudoscope.com/"
  name "Claudoscope"
  desc "Menu bar companion for Claude Code sessions"
  homepage "https://github.com/cordwainersmith/Claudoscope"

  auto_updates true
  depends_on macos: :sonoma

  app "Claudoscope.app"

  zap trash: [
    "~/Library/Caches/com.claudoscope.app",
    "~/Library/Preferences/com.claudoscope.app.plist",
  ]
end
