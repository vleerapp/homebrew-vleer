class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://cdn.vleer.app/nightly/Vleer-0.2.0-nightly.20261112.435-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.2.0-nightly.20261112.435"
  sha256 Hardware::CPU.arm? ? "736c3f605772749dc17c409d5c01dee7b974153ad8833d6a5b68609fef1bb1ba" : "b3bf9f2ea83b207741ec7b905e4590204eae65ef602d3fe452a7d79f940e2765"

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
