cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1-nightly.20261111.434"
  sha256 arm:    "dec85bc95125993f9aa75ddf3169d0d276a78caaa77f2372e710880300efc983",
         x86_64: "cdff98882f8d9e0d448e7b5efb97781bb9c5c3cb995400c5dbb937f3860c5157"

  url "https://cdn.vleer.app/nightly/Vleer-0.1.1-nightly.20261111.434-#{arch}.dmg"
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
