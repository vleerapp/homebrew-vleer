cask "vleer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "REPLACE_WITH_AARCH64_SHA256",
         intel: "REPLACE_WITH_X86_64_SHA256"

  url "https://vleer-releases.objects.eplg.cloud/release/Vleer-#{version}-#{arch}.dmg"
  name "Vleer"
  desc "Music, but without the subscription"
  homepage "https://vleer.app"

  auto_updates true
  app "Vleer.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Vleer.app"]
  end
end
