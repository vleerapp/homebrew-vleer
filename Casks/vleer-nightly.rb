cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261110.433"
  sha256 arm:    "96afbea34ba111fd22ae00aa4f85ea530ee246e1d7910ee71bcde9eb6bc2a099",
         x86_64: "68e6f74cc3d0ad2fbe8645b3019b0094bd89eab30be99ae8d89ae6965b64bf01"

  url "https://cdn.vleer.app/nightly/Vleer-0.1.0-nightly.20261110.433-#{arch}.dmg"
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
