cask "soniclet" do
  version "0.7.8"
  sha256 "85818d2d666d93494ac082d36b5b03f0905991e3a229ac4db1c8accf5477f019"

  url "https://github.com/pal4de/soniclet/releases/download/v#{version}/Soniclet-universal.zip"
  name "Soniclet"
  desc "Switch audio devices from the menu bar"
  homepage "https://github.com/pal4de/soniclet"

  depends_on macos: :sonoma

  app "Soniclet.app"

  uninstall quit: "io.github.pal4de.soniclet"

  zap trash: "~/Library/Preferences/io.github.pal4de.soniclet.plist"
end
