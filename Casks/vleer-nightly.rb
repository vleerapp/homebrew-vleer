cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261009.393"
  sha256 arm:    "8115e0e495c6d93c459188af4ef2f2d6b321c12135a74ca0b40ab7887f8e834b",
         x86_64: "68cd372e58e04c2bdfb67c870b68d3647bb1cecf69ebb656be039e499cce6c3d"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261009.393-#{arch}.dmg"
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
