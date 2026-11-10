class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://cdn.vleer.app/nightly/Vleer-0.1.0-nightly.20261110.433-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.0-nightly.20261110.433"
  sha256 Hardware::CPU.arm? ? "e79bcd395a0e6306b46ce4af471160a2cd93d52a197b7d83d1dda4bb9574f82e" : "4b3c853c05934d4fa8203ea13000389ec69db3a3ae66c82704cec6bd5e0da668"

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
