class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://cdn.vleer.app/nightly/Vleer-0.1.1-nightly.20261111.434-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.1-nightly.20261111.434"
  sha256 Hardware::CPU.arm? ? "1dfdcf43a68e87550828cb41399274b283e0712e33dd2e7901cee010a814f46c" : "5504cc7805386bca783954392735dab72f7b97746cfe34ab130204a2f4c70228"

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
