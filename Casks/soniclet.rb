cask "soniclet" do
  version "0.7.9"
  sha256 "a1b0400a9b17887fd5044cff243e85352a8668d3f45360afb1ebd8170689da3e"

  url "https://github.com/pal4de/soniclet/releases/download/v#{version}/Soniclet-universal.zip"
  name "Soniclet"
  desc "Switch audio devices from the menu bar"
  homepage "https://github.com/pal4de/soniclet"

  depends_on macos: :sonoma

  app "Soniclet.app"

  uninstall quit: "io.github.pal4de.soniclet"

  zap trash: "~/Library/Preferences/io.github.pal4de.soniclet.plist"
end
