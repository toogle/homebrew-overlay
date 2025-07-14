cask "ktalk" do
  version "3.1.1"
  sha256 "d5b646955000f2ee91d639d6291cdc0db50e8527e41d4829d5db2c736c06d55a"

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
