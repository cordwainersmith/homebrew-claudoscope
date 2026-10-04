cask "claudoscope" do
  version "1.3.0"
  sha256 "1086d4546a85e4c28b2a987d5c21858a48a7d15e3fd085a19a12254ba2d71799"

  url "https://dl.claudoscope.com/v1.3.0/Claudoscope.dmg",
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
