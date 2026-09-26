cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260926.376"
  sha256 arm:    "094c4018dd7ce8b09a842d2ed4b906a6397fa03fa034d585fd7b75806090fecc",
         x86_64: "f1630792e7d7c3ec05510f66074ebdcc7fcad77505a9db59c6c3dab736cd09ff"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260926.376-#{arch}.dmg"
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
