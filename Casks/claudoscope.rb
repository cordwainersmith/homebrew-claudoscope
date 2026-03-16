cask "claudoscope" do
  version "0.3.8"
  sha256 "94401b8b4b76beaee75920ec3b245e712f7120ba6626437d49eba0ceb098a9bc"

  url "https://dl.claudoscope.com/v#{version}/Claudoscope.dmg",
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
