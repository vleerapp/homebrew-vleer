class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261018.404-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.0-nightly.20261018.404"
  sha256 Hardware::CPU.arm? ? "f2d9e4ea4076646d1e1d352cfb7d2c25f45a8d7fee303dd4495d9294aa5ec3a4" : "763dc089933e360ab44b5d0b94c68d2731c3fc4c37e7b2aa3796e5a2fdd71927"

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
