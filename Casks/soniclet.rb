cask "soniclet" do
  version "0.7.6"
  sha256 "2c99a9f1a2cdbfd8ee8fdcfc71e8ba23d59bd78dc03f3d9f1ca36d3a3a4a79da"

  url "https://github.com/pal4de/soniclet/releases/download/v#{version}/Soniclet-universal.zip"
  name "Soniclet"
  desc "Switch audio devices from the menu bar"
  homepage "https://github.com/pal4de/soniclet"

  depends_on macos: :sonoma

  app "Soniclet.app"

  uninstall quit: "io.github.pal4de.soniclet"

  zap trash: "~/Library/Preferences/io.github.pal4de.soniclet.plist"
end
