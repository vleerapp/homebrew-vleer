cask "vleer@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260908.354"
  sha256 arm:   "b26d4bdb5a79be472dbdd31e6f6b33d381623f6f6a8f419eac36ada7fd8e9fdd",
         intel: "b66a739684ce64e041d11c2a9fc0cc6a174706409f7352b5d1885938dbd24373"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260908.354-#{arch}.dmg"
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
