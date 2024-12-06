cask "boardmix" do
  version "1.6.5"
  sha256 "0f29a884127db8b6bb8d8b53fbdf3fa754d13fa1cdacd23afc887814137c2faf"

  url "https://boardmix-cms-ff.oss-eu-central-1.aliyuncs.com/packages/download/desktop/bosyun/#{version}/boardmix_mac_#{version}_universal.dmg"
  name "boardmix"
  desc "Boardmix"
  homepage "https://boardmix.com"

  app "boardmix-intl.app"

  livecheck do
    url "https://boardmix.com/download"
    regex(/data-href=.*?boardmix_mac_(\d+(?:\.\d+)+)_universal.dmg/i)
  end

  auto_updates true
end
