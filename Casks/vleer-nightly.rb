cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260906.352"
  sha256 arm:    "175ca2ad00b61fbf2a6a486ba470e2059614a666b97773adaafc9f3fd2e9cf09",
         x86_64: "291e50a1620b398a30a33a5fc01939d3b91e8d4afe6002069c38e7ed6880a64c"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-#{version}-#{arch}.dmg"
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
