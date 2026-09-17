cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260917.364"
  sha256 arm:    "9b52170fc6397c8f80207897c7c6c907bf4af47c6dff34055ec2a21c9d4048e6",
         x86_64: "989eb9e6b1a24ed7e6df202763abc82ef43c43d6f2c4afc3cc703d737c688725"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260917.364-#{arch}.dmg"
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
