cask "vleer-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-nightly.20260922.370"
  sha256 arm:    "ce1f6d6a76ab6bb326d7e88dae51ad7d9ceebf17c61d9632a9e367b1e2d16ce8",
         x86_64: "3aff91eca6a5083a9c314e4983140f10cb40ac7023dc3a404bb518fec4bcfc22"

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260922.370-#{arch}.dmg"
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
