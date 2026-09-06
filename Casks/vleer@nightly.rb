cask "vleer@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.0.0-nightly.placeholder"
  sha256 arm:   "REPLACE_WITH_AARCH64_SHA256",
         intel: "REPLACE_WITH_X86_64_SHA256"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-#{version}-#{arch}.dmg"
  name "Vleer Nightly"
  desc "Vleer nightly build"
  homepage "https://vleer.app"

  conflicts_with cask: "vleer"
  auto_updates true

  app "Vleer.app", target: "Vleer Nightly.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Vleer Nightly.app"]
  end
end
