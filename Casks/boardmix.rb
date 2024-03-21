cask "boardmix" do
  version "1.5.3"
  sha256 "b329f1face679db5660b3f800a1fc97bfe20a02a4bbfd3369a83f8507949ba78"

  url "https://boardmix-cms-ff.oss-eu-central-1.aliyuncs.com/packages/download/desktop/bosyun/#{version}/boardmix_mac_#{version}_universal.dmg"
  name "boardmix"
  desc "Boardmix"
  homepage "https://boardmix.com"

  app "Boardmix.app"

  livecheck do
    url "https://boardmix.com/download"
    regex(/data-href=.*?boardmix_mac_(\d+(?:\.\d+)+)_universal.dmg/i)
  end

  auto_updates true
end
