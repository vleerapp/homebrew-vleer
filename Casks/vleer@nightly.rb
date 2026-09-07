cask "vleer@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260907.353"
  sha256 arm:   "321cf1ef11a379c484efcecc8a1cc80fe1e9843e332e06e556cc7039e005337c",
         intel: "3143424762e111e5e7c05cd6d17990144d779e4dedc62f3c6cd71b95c9ed9d2d"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260907.353-#{arch}.dmg"
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
