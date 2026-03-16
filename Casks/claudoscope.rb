cask "claudoscope" do
  version "0.3.8"
  sha256 "a5a4b3d0cf0dd1b2a40bd67063863b207c2ea81dc5780e23f20fed8424378332"

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
