cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20261003.387"
  sha256 arm:    "fcdc56a251379cf3399e2462de1dedc9a0edbc470e34b78f7b7fe4decef45cfa",
         x86_64: "6e71a051eb68835296f97b7cbf3eb812cb72f1ffabcaec9810f89fb95a688a47"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261003.387-#{arch}.dmg"
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
