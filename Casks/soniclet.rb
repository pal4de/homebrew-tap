cask "soniclet" do
  version "0.7.7"
  sha256 "cb0c2e10b7408bd353a271e7be69be8321e21cbd78550dbdb766132c6cad3635"

  url "https://github.com/pal4de/soniclet/releases/download/v#{version}/Soniclet-universal.zip"
  name "Soniclet"
  desc "Switch audio devices from the menu bar"
  homepage "https://github.com/pal4de/soniclet"

  depends_on macos: :sonoma

  app "Soniclet.app"

  uninstall quit: "io.github.pal4de.soniclet"

  zap trash: "~/Library/Preferences/io.github.pal4de.soniclet.plist"
end
