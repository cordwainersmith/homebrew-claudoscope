cask "claudoscope" do
  version "0.7.0"
  sha256 "a3b94d80e88f21ba379e68707c73caee745b392c8e41363e096c732b00e3d6a7"

  url "https://dl.claudoscope.com/v0.7.0/Claudoscope.dmg",
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
