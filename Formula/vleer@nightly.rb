class VleerATNightly < Formula
  desc "Vleer nightly build"
  homepage "https://vleer.app"
  version "0.1.0-nightly.20260909.355"
  conflicts_with "vleer"

  on_macos do
    odie "install macOS nightly via `brew install --cask vleer@nightly` instead"
  end

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260909.355-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  sha256 Hardware::CPU.arm? ? "93b933ec75c00cb892a91990d885aed3c066f5871b445d3137adf976848e5ccc" : "fe3ce30ac4c17a30a719f544f69862ff7b95b06e7952168188a489d148d5e1e3"

  def install
    bin.install "bin/vleer" => "vleer-nightly"
    share.install "share/applications", "share/icons"
    prefix.install "share/vleer/LICENSE"
  end

  test do
    system "#{bin}/vleer-nightly", "--version"
  end
end
