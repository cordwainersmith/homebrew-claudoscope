cask "claudoscope" do
  version "1.0.0"
  sha256 "a0cd14f76c2353e98eca7e3a7110b2de35cf43e881027b00eed118730c35ce8d"

  url "https://dl.claudoscope.com/v1.0.0/Claudoscope.dmg",
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
