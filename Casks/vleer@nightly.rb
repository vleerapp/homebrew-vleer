cask "vleer@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260909.355"
  sha256 arm:   "09dcef1d5a4de0e6896775a4560b3f31b72e313e1a5869a71174a3b2d2a46046",
         intel: "35d1566b4acdd683366017cfd3ff627b33983cfd99b11041e70a6d020c02669f"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260909.355-#{arch}.dmg"
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
