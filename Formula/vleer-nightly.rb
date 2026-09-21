class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260921.368-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.0-nightly.20260921.368"
  sha256 Hardware::CPU.arm? ? "692527d3d968cc27a9ded9d9fa82db4242f25dd70bc37cf858dfd7d2984efa94" : "043894cb6adc12bb35fea16db1e12567ad2cabc0c2d9add552e378e3aa2afc0e"

  conflicts_with "vleer"

  def install
    odie "install macOS nightly via `brew install --cask vleer-nightly` instead" if OS.mac?

    bin.install "bin/vleer"
    share.install "share/applications", "share/icons"
    prefix.install "share/vleer/LICENSE"
  end

  test do
    system "#{bin}/vleer", "--version"
  end
end
