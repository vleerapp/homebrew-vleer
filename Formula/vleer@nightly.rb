class VleerATNightly < Formula
  desc "Vleer nightly build"
  homepage "https://vleer.app"
  version "0.1.0-nightly.20260915.361"
  conflicts_with "vleer"

  on_macos do
    odie "install macOS nightly via `brew install --cask vleer@nightly` instead"
  end

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260915.361-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  sha256 Hardware::CPU.arm? ? "2b854e0c4502b2cf67cbeae0d3c87ebfb5ec49ec1ffbfd9835e5e5e3347f7dbd" : "d719d7413cea0a78b63f6b0d2dfe5da4790cc7aa0f237d5cbb24988fd9d1634f"

  def install
    bin.install "bin/vleer" => "vleer-nightly"
    share.install "share/applications", "share/icons"
  end

  test do
    system "#{bin}/vleer-nightly", "--version"
  end
end
