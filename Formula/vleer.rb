class Vleer < Formula
  desc "Music, but without the subscription"
  homepage "https://vleer.app"
  url "https://vleer-releases.objects.eplg.cloud/release/Vleer-0.1.0-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  version "0.1.0"
  sha256 Hardware::CPU.arm? ? "REPLACE_WITH_AARCH64_SHA256" : "REPLACE_WITH_X86_64_SHA256"
  license "AGPL-3.0"

  conflicts_with "vleer-nightly"

  def install
    odie "install macOS Vleer via `brew install --cask vleer` instead" if OS.mac?

    bin.install "bin/vleer"
    share.install "share/applications", "share/icons"
    prefix.install "share/vleer/LICENSE"
  end

  test do
    system "#{bin}/vleer", "--version"
  end
end
