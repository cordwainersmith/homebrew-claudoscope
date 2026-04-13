cask "claudoscope" do
  version "0.6.0"
  sha256 "11b41318382d9046eef05914c01391d20bb5df34b08a19a619641eacd6bd4a36"

  url "https://dl.claudoscope.com/v0.6.0/Claudoscope.dmg",
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
