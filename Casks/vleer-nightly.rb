cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261005.389"
  sha256 arm:    "141d3b2a9b045a3ed2820c845d30d402b4a77c3aa52c47d5735e93c78b450b1d",
         x86_64: "6ec6a9328d00e2c06c021eafb2223eac99791eec37fe278b52cbfded4e7bdc2d"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261005.389-#{arch}.dmg"
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
