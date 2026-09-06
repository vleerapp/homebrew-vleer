class VleerATNightly < Formula
  desc "Vleer nightly build"
  homepage "https://vleer.app"
  version "0.0.0-nightly.placeholder"
  conflicts_with "vleer"

  on_macos do
    odie "install macOS nightly via `brew install --cask vleer@nightly` instead"
  end

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-#{version}-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  sha256 Hardware::CPU.arm? ? "REPLACE_WITH_AARCH64_SHA256" : "REPLACE_WITH_X86_64_SHA256"

  def install
    bin.install "bin/vleer" => "vleer-nightly"
    share.install "share/applications", "share/icons"
    prefix.install "share/vleer/LICENSE"
  end

  test do
    system "#{bin}/vleer-nightly", "--version"
  end
end
