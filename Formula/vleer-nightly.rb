class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://cdn.vleer.app/nightly/Vleer-0.2.1-nightly.20261123.448-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.2.1-nightly.20261123.448"
  sha256 Hardware::CPU.arm? ? "4225bd99819879d5c39311d620d4848b83e374ebb76a997ff610b051db8b7e28" : "4824f9257a791e10b9127178491d5b7ef060c70c02bb3a2e17b9cb15ec454969"

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
