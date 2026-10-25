cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261025.412"
  sha256 arm:    "fa6892ddbca462f3ed891fd87e1aaf6ceccadeeb5c78f745ef0f8ea74e08962b",
         x86_64: "1d34e28a7959cb4991369b6715b9e53b27aa2585b6ec9e2054eaa82a8edf3727"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261025.412-#{arch}.dmg"
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
