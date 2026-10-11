cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261011.395"
  sha256 arm:    "acd5f70e3c99dae1e51e508e42d30b9931827dfac715b2b0cef93ff57a46ea8f",
         x86_64: "cefe6066958e9dc0cd4db8cde5fdebc5448edbe54a5aae7abdb492379237de2c"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261011.395-#{arch}.dmg"
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
