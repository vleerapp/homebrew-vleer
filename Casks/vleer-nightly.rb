cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260922.371"
  sha256 arm:    "ab5dc7aa87ee07b5aa22f6c1769830fb3ef91d51457f7970b60b31ad13e27fc0",
         x86_64: "5bb75bb8af92fd9eb46340f58fe2076eaf0ede6f0b1d2a6fcfad86fa89264ead"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260922.371-#{arch}.dmg"
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
