cask "ktalk" do
  version "2.10.0"
  sha256 "54bf74a0e0063295bde6533e621e4e120adb2f5f9acba65b5153e21bcb4f067b"

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
