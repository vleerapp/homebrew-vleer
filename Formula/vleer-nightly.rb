class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261009.393-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.0-nightly.20261009.393"
  sha256 Hardware::CPU.arm? ? "3ea442c624dbfb46fe8d5aef981a9159bec16e50ab5804af3cb7b32a268f8ee9" : "6aa89f17a7394f15dc815d5f813d98b5764d7728a7c721205ecea7165a35533f"

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
