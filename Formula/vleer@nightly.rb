class VleerATNightly < Formula
  desc "Vleer nightly build"
  homepage "https://vleer.app"
  version "0.1.0-nightly.20260907.353"
  conflicts_with "vleer"

  on_macos do
    odie "install macOS nightly via `brew install --cask vleer@nightly` instead"
  end

  url "https://vleer-releases.objects.eplg.cloud/nightly/Vleer-0.1.0-nightly.20260907.353-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}.tar.gz"
  sha256 Hardware::CPU.arm? ? "f5ef737c5821e72a3585ed7e6ac13fcd4a94863f2eb5c6f2ef1c19509650c310" : "79ad08db0e6a59e9455457888c90971d333a88e47315b84fabd68e44d1a1b919"

  def install
    bin.install "bin/vleer" => "vleer-nightly"
    share.install "share/applications", "share/icons"
    prefix.install "share/vleer/LICENSE"
  end

  test do
    system "#{bin}/vleer-nightly", "--version"
  end
end
