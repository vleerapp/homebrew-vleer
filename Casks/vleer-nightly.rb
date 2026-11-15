cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.0-nightly.20261115.440"
  sha256 arm:    "24fc1a90c29409eb2af3b22c7eff8d5529d30a970c1d27d9c58ecaa9ff20774a",
         x86_64: "0e5d0111292c6b90ed9caf4b95fd12a88f060e451f017af84153195e9f5e387e"

  url "https://cdn.vleer.app/nightly/Vleer-0.2.0-nightly.20261115.440-#{arch}.dmg"
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
