cask "claudoscope" do
  version "0.6.1"
  sha256 "a6cdc978553455d138c337933324348c18a5d9bbe954034c1960e022aaf11000"

  url "https://dl.claudoscope.com/v0.6.1/Claudoscope.dmg",
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
