class VleerNightly < Formula
  desc "Music, but without the subscription (nightly build)"
  homepage "https://vleer.app"
  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260920.367-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.0-nightly.20260920.367"
  sha256 Hardware::CPU.arm? ? "e75eca64e7191d580f1684bc92958d19c1332a8b12b0bc981d67154e32ec1d61" : "2fb1add141ff8ea23327cdbe1ce0d86df536f65a3d6322ef6a39b92c89337e9f"

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
