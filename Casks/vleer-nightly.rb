cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261016.402"
  sha256 arm:    "15dc162b9f1d0a39f182a1981fa7c04b753d2a446d712dfac98a46229aec8dd7",
         x86_64: "2629e351da8a56c9abc4b13627ddd125d84cf755517ed067f0bbaf2c8bdda6c7"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261016.402-#{arch}.dmg"
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
