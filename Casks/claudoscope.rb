cask "claudoscope" do
  version "1.2.0"
  sha256 "9ca8c8337eac32a5e5c0afc76d62b3903c5225d1049e106d3d5c731a6a302a1e"

  url "https://dl.claudoscope.com/v#{version}/Claudoscope.dmg"
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
