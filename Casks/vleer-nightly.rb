cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260918.365"
  sha256 arm:    "b9b1448deff485758e74853001c4d60882c3ed42a37d0c3df96aa9f9e0d0dc9e",
         x86_64: "0ccdde7c8b04e9dfc7fb6f6deeaec135556ffd3f815e42a7bab760ccdb8e5802"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260918.365-#{arch}.dmg"
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
