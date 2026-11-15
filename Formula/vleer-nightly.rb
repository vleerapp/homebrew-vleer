class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://cdn.vleer.app/nightly/Vleer-0.2.0-nightly.20261115.440-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.2.0-nightly.20261115.440"
  sha256 Hardware::CPU.arm? ? "37683e8b7dab89c8c4f109dda361c12a85e6e156afbb77ec19919b062532ae99" : "f95c9c5a354e4fec41f164ac082956cab944faeaf5f7ec52d4ebacb1a4d9aa8e"

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
