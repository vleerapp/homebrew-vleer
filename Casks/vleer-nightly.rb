cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260920.367"
  sha256 arm:    "fa9c7c6e0b171d7162a75f91d945d3e66f75701fd41116fa6fd559166b56e7a1",
         x86_64: "4f8a73cba7dbeddc1dd68b16230359f4fff4d26540edba3add7e9ced99730ad4"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260920.367-#{arch}.dmg"
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
