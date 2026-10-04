class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20261004.388-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.0-nightly.20261004.388"
  sha256 Hardware::CPU.arm? ? "6ec29c5bc76ad3a9bfe51598400b142cfeafe790ad849133ba12732eccde8b92" : "421802fa4f9a7712db7d6f1639ddc27a10d8d89e4fdadf33cda9ad09e1a1317c"

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
