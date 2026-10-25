cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261025.413"
  sha256 arm:    "b706f499d2d45358380e4e95b6b457a1f1588156d9a592336cf46dd3dd24630a",
         x86_64: "ba2b7a7f0a1c3a98fde9f74b7263142efa3f55a45d21ef9d9203d7831bb6ebea"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261025.413-#{arch}.dmg"
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
