cask "alan" do
  version "1.0"
  sha256 "43adad9905eec5da09d74aa13fd0b4db3372b95a7ead1d22e72d86f1a5d656aa"

  url "https://github.com/tylerhall/Alan/releases/download/v#{version}/Alan.zip"
  name "Alan"
  desc "Draws a border around the active macOS window"
  homepage "https://github.com/tylerhall/Alan"

  app "Alan.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
