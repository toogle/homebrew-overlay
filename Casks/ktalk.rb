cask "ktalk" do
  version "3.8.0"
  sha256 "4df317aff7f125cb5a73e5385c564e70553a25586bc05d6ce7c856fb1e4f106e"

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
