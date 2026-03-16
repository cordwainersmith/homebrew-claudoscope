cask "claudoscope" do
  version "0.4.3"
  sha256 "42bcd8fcf9f4c44f9f13453baca0c599b5bd27fcfe1ffe3785d3785b76c31724"

  url "https://dl.claudoscope.com/v0.4.3/Claudoscope.dmg",
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
