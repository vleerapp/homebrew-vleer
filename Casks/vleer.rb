cask "vleer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:    "REPLACE_WITH_AARCH64_SHA256",
         x86_64: "REPLACE_WITH_X86_64_SHA256"

  url "https://vleer-releases.objects.eplg.cloud/release/Vleer-#{version}-#{arch}.dmg"
  name "Vleer"
  desc "Music, but without the subscription"
  homepage "https://vleer.app/"

  auto_updates true
  depends_on :macos

  app "Vleer.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Vleer.app"]
  end
end
