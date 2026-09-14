class VleerATNightly < Formula
  desc "Vleer nightly build"
  homepage "https://vleer.app"
  version "0.1.0-nightly.20260914.360"
  conflicts_with "vleer"

  on_macos do
    odie "install macOS nightly via `brew install --cask vleer@nightly` instead"
  end

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260914.360-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  sha256 Hardware::CPU.arm? ? "13641c14c94e17f01ead4f42061d196d9e78adf995fd7095ebd699eb3b69487e" : "934f5225a445629fe8c8f595445d0dd679feca251ccad5c3c9fc19eff5586dd2"

  def install
    bin.install "bin/vleer" => "vleer-nightly"
    share.install "share/applications", "share/icons"
  end

  test do
    system "#{bin}/vleer-nightly", "--version"
  end
end
