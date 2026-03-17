cask "claudoscope" do
  version "0.4.6"
  sha256 "d411442258c2e7b084559a06f498293112fc29aa66e395eb9de6c51e877643b9"

  url "https://dl.claudoscope.com/v0.4.6/Claudoscope.dmg",
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
