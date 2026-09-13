class VleerATNightly < Formula
  desc "Vleer nightly build"
  homepage "https://vleer.app"
  version "0.1.0-nightly.20260913.359"
  conflicts_with "vleer"

  on_macos do
    odie "install macOS nightly via `brew install --cask vleer@nightly` instead"
  end

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260913.359-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  sha256 Hardware::CPU.arm? ? "aabd9f2c5568cf9633f007754a4728f42403829cc12868a8fdec7747a6516c55" : "7514a81a111f4e5d18451057ee5c082dfe7df51ae3189efb0c3347a640881eaf"

  def install
    bin.install "bin/vleer" => "vleer-nightly"
    share.install "share/applications", "share/icons"
  end

  test do
    system "#{bin}/vleer-nightly", "--version"
  end
end
