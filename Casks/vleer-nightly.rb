cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.0-nightly.20261112.435"
  sha256 arm:    "02bee446ae3e5498092c47ac479bf87ccb21b1a44f20aa80812042ef49a0ab8b",
         x86_64: "0692e0dfe0af2f2de55cc5e7066863b1c67c632ddf0757960bc83c288ad8bc3f"

  url "https://cdn.vleer.app/nightly/Vleer-0.2.0-nightly.20261112.435-#{arch}.dmg"
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
