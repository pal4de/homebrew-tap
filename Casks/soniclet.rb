cask "soniclet" do
  version "0.7.6"
  sha256 "a2309ab905f1e97b50c0b6e2f46d91a916ea74ce61190052c52f434029a486e1"

  url "https://github.com/pal4de/soniclet/releases/download/v#{version}/Soniclet-universal.zip"
  name "Soniclet"
  desc "Switch audio devices from the menu bar"
  homepage "https://github.com/pal4de/soniclet"

  depends_on macos: :sonoma

  app "Soniclet.app"

  uninstall quit: "io.github.pal4de.soniclet"

  zap trash: "~/Library/Preferences/io.github.pal4de.soniclet.plist"
end
