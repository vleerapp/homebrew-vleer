cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261019.405"
  sha256 arm:    "fe1f8c9186b7eba4598e1ba623384ea7d6f7ed360196744e10c00bc5d7158ba1",
         x86_64: "69547576b7123ddff54b02d8003fa7c8e6517f2be43379d0b68d1f3c170dbae1"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261019.405-#{arch}.dmg"
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
