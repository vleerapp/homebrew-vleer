class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://cdn.vleer.app/nightly/Vleer-0.2.1-nightly.20261119.444-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.2.1-nightly.20261119.444"
  sha256 Hardware::CPU.arm? ? "b6931eafc0f406f47e7c5d4e667754ff6754d278feaf9f57ee94ce5e2a45dbc7" : "2cd0a36529c726868a54fa1d839ab070a808bedec28623660eb329b484ab84f4"

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
