cask "claudoscope" do
  version "0.3.1"
  sha256 "c6adcb3999720a4577e20d31b156ac79ad06a347c2adcbf1d78a209900bf93d4"

  url "https://github.com/cordwainersmith/Claudoscope/releases/download/v#{version}/Claudoscope.dmg"
  name "Claudoscope"
  desc "macOS menu bar companion for Claude Code sessions"
  homepage "https://github.com/cordwainersmith/Claudoscope"

  depends_on macos: ">= :sonoma"

  app "Claudoscope.app"

  zap trash: [
    "~/Library/Caches/com.claudoscope.app",
    "~/Library/Preferences/com.claudoscope.app.plist",
  ]
end
