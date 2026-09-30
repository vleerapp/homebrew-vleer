cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260930.382"
  sha256 arm:    "953e7ab1b9dd3c0e3c535e9b135be3f5d0697688ff2041de2849486129a01eb4",
         x86_64: "009d79a4852cfa7090cefe826c06c8ad3216f11fa7f7813b5327107e002b847b"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260930.382-#{arch}.dmg"
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
