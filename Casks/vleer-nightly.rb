cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261004.388"
  sha256 arm:    "0a7d5dfdf372582d3dad1f6e450ba63c935c4a000c538f5fdbe39751df3c5db7",
         x86_64: "ffa372ca3ae6e697896ba67af1bbe9e6aa7f8474a20637805dfbd053f7bb86ef"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261004.388-#{arch}.dmg"
  name "Vleer"
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app/"

  auto_updates true
  conflicts_with cask: "vleer"
  depends_on :macos

  app "Vleer.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Vleer.app"]
  end
end
