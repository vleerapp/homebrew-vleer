cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261101.420"
  sha256 arm:    "8379a0cdf6cd022edb32ac3fa7ee7f6c7002985c430cac5acdb005ccec5451d6",
         x86_64: "1f35ba41c1cd45e77620ca5cf6434dd28cd772b1d858f261c522d5cedc4e9a48"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261101.420-#{arch}.dmg"
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
