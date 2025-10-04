cask "ktalk" do
  version "3.2.1"
  sha256 "80e125cddf12e1b15a9512498ad9c48cd07a27c8f91222392fb63913b421b7f3"

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
