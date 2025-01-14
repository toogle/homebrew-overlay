cask "ktalk" do
  version "3.0.0"
  sha256 "87ee5bfe1a83b70ea0e04f12f96347e42c711f56e790595b1ccdaf134028af9d"

  url "https://st.ktalk.host/ktalk-app/mac/ktalk.#{version}-mac.dmg"
  name "ktalk"
  desc "Kontur Talk"
  homepage "https://kontur.ru/talk"

  app "Толк.app"

  livecheck do
    url "https://app.ktalk.ru/system/dist/download/mac"
    regex(/ktalk\.(\d+(?:\.\d+)*)-mac\.dmg/i)
    strategy :header_match
  end

  auto_updates true
end
