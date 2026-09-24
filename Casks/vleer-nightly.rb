cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260924.373"
  sha256 arm:    "2af377728ed2f467bbc6c63c5c3c1faadbbb25d00718477eb17d80ec4c89da52",
         x86_64: "ea0a1c59acbfcdd773c9516c4106add61af745b6c9ed16ef6466124465046793"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260924.373-#{arch}.dmg"
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
