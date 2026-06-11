cask "claudoscope" do
  version "0.8.0"
  sha256 "692c2a265c6605e6480d6b524ca6b4c2fdc7ed07ec389d51c27fc206c30b4802"

  url "https://dl.claudoscope.com/v0.8.0/Claudoscope.dmg",
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
