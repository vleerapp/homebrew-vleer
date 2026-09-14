cask "vleer@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260914.360"
  sha256 arm:   "d197264a52c7afd9644f0ab601b507b3c1a1e988629639366866442dca494f6b",
         intel: "af30f031ac3c76b7575cb554b003d43b3ac663e83275a3b2517ce3a785bd42eb"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260914.360-#{arch}.dmg"
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
