cask "claudoscope" do
  version "0.9.0"
  sha256 "102aa3d8b06b1b8096d0e7aa1d61dc4b0997accc5b6c750c992de1449f3cde3d"

  url "https://dl.claudoscope.com/v0.9.0/Claudoscope.dmg",
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
