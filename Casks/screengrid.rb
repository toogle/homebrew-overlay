cask "screengrid" do
  version "0.1.0"
  sha256 "fad23610344d3b9300a9014b96892a6fc62e37b9bce8cff7ccf5fc3caced2910"

  url "https://github.com/toogle/screengrid/releases/download/v#{version}/ScreenGrid-#{version}.dmg"
  name "ScreenGrid"
  desc "eyboard-driven mouse clicking for macOS"
  homepage "https://github.com/toogle/screengrid"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "ScreenGrid.app"

  zap trash: [
    "~/Library/Preferences/io.toogle.ScreenGrid.plist",
  ]

  caveats <<~EOS
    ScreenGrid needs Accessibility and Input Monitoring permissions
    (System Settings → Privacy & Security); it asks on first launch.
  EOS
end
