class Vleer < Formula
  desc "Music, but without the subscription"
  homepage "https://vleer.app"
  version "0.1.0"
  license "AGPL-3.0"

  on_macos do
    odie "install macOS Vleer via `brew install --cask vleer` instead"
  end

  url "https://vleer-releases.objects.eplg.cloud/release/Vleer-#{version}-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  sha256 Hardware::CPU.arm? ? "REPLACE_WITH_AARCH64_SHA256" : "REPLACE_WITH_X86_64_SHA256"

  def install
    bin.install "bin/vleer"
    share.install "share/applications", "share/icons"
    prefix.install "share/vleer/LICENSE"
  end

  test do
    system "#{bin}/vleer", "--version"
  end
end
