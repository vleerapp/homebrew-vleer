class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260924.373-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.0-nightly.20260924.373"
  sha256 Hardware::CPU.arm? ? "24f3a68746e5eb2133daace324b485cba439585cdd4a3dcde5e436903e328f65" : "2627728af5078011060ebbb4037f68d7de2e519ff5c719c910a7fdac95943bd5"

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
