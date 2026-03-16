cask "claudoscope" do
  version "0.3.9"
  sha256 "124afea2de5be2b3412a969add0272d3fba1eaa94eda278d29b8e0bbe2bdc784"

  url "https://dl.claudoscope.com/v0.3.9/Claudoscope.dmg",
      verified: "dl.claudoscope.com/",
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
