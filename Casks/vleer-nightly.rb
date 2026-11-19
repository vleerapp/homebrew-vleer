cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.1-nightly.20261119.444"
  sha256 arm:    "c619b03c7bd94985e129257e914bd31d3a84d75aa3ae6228c9d67fbbbfc317bb",
         x86_64: "04c14e4eb375f7373fe888d307195f73f050b173c7f5945c0dcff900241b7d03"

  url "https://cdn.vleer.app/nightly/Vleer-0.2.1-nightly.20261119.444-#{arch}.dmg"
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
