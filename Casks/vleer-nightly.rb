cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260927.378"
  sha256 arm:    "d76a38bf53b0c5b42e62bc57efaa38a70b09f7c4234519b7ed99030fd2ea2f9f",
         x86_64: "5551e69f0e9110d841146f371bf7988f31c3d6fc65f9877194e3b671b1888ac1"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260927.378-#{arch}.dmg"
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
