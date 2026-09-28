cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260928.379"
  sha256 arm:    "27a6acfe4b57094e9e53647d1046afda3a9ee783ff6dbc7a08e991bd92cfc7c8",
         x86_64: "182db0ccaad1a6d283e2f805f867cfaaafd2b81ab33ae845cc3c521b20d2d7b6"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260928.379-#{arch}.dmg"
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
