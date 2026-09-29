cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260929.380"
  sha256 arm:    "b098ac91b3f6e3d6d9991a894166ed39d0e99e5c1d5ed8575e2e22c3bd72cab6",
         x86_64: "e22a491b88342426126d4be49232cfbcfe7a1ac25b2478210919d34bfdbc25cb"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260929.380-#{arch}.dmg"
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
