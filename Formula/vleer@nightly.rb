class VleerATNightly < Formula
  desc "Vleer nightly build"
  homepage "https://vleer.app"
  version "0.1.0-nightly.20260912.358"
  conflicts_with "vleer"

  on_macos do
    odie "install macOS nightly via `brew install --cask vleer@nightly` instead"
  end

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260912.358-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  sha256 Hardware::CPU.arm? ? "a859d74be2498347a0465b4ee39d20721ee761b3a360b088593e726fbda51a0f" : "99287ea62181baa90f37c94f9b8eb0716f9d56f347587ac3788e10c767784b28"

  def install
    bin.install "bin/vleer" => "vleer-nightly"
    share.install "share/applications", "share/icons"
  end

  test do
    system "#{bin}/vleer-nightly", "--version"
  end
end
