cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261022.408"
  sha256 arm:    "d13ad130d8aab5b7bc4c2168b4761f51784f38d382915558868ca6847ca47089",
         x86_64: "368ec3ad468bf6bcddec8979e28e68a9bba7ff1d7c41b3fcf4415b99c35f9b26"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261022.408-#{arch}.dmg"
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
