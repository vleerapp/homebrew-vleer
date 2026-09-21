cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260921.368"
  sha256 arm:    "f21518a7f73225c37dcae171d3a2fc42c2e7baab49c0218bf98fa4c71210a209",
         x86_64: "9f48dcd6a9c151f03e45bde9c3d0dafc7e7d35ed8988a4b67c5091476299c4eb"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260921.368-#{arch}.dmg"
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
