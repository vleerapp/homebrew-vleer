cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261021.407"
  sha256 arm:    "becf1bc1f751a045b584cf83a2fd4032cfcb7e8ff996601a1823dceaf99ba6d0",
         x86_64: "31e12a2939a730ed5dd2f3b7bd21ec11b3d3e27cc184fe905518ab4c9346e756"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261021.407-#{arch}.dmg"
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
