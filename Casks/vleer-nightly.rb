cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.1-nightly.20261123.448"
  sha256 arm:    "d3702fcb947840eb34e124b4cca8feb0b70b5cba9d85ddf89abed4529bd65fd0",
         x86_64: "e2282f8d7b3ac1d381ecda583851bfab9ee6d4c19f6233035561fd720d4c59fd"

  url "https://cdn.vleer.app/nightly/Vleer-0.2.1-nightly.20261123.448-#{arch}.dmg"
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
