cask "vleer@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260912.358"
  sha256 arm:   "c62a2e94a8803c3cdf884eff61a90c99a6ae33653220838d2b51fffeaf50bded",
         intel: "c1ee37524d7167e80ff9676da05c9a5f57d981976532e25552ba5d93d31e00c9"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260912.358-#{arch}.dmg"
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
