cask "claudoscope" do
  version "1.4.0"
  sha256 "59b1712cc95f27403a7c85b5f286e302b1fe9139833c5abd21a3dde0afa04ebe"

  url "https://dl.claudoscope.com/v1.4.0/Claudoscope.dmg",
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
