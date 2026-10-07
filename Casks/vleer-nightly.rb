cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261007.391"
  sha256 arm:    "aee7763ec2ea6eb2cf6c40032b6a891fe11f4f0cc992c523ee5a8d9bedfe90fd",
         x86_64: "9fb9cb21ad94b533bedebe34313db37538ee5a65cd79a7020efe7832e0d4f81a"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261007.391-#{arch}.dmg"
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
