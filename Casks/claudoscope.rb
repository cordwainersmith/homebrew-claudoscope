cask "claudoscope" do
  version "0.4.0"
  sha256 "ed72440a774d244ea5b458f872810b3bb97dc9953903d1ba3c456d314b35fa10"

  url "https://dl.claudoscope.com/v0.4.0/Claudoscope.dmg",
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
