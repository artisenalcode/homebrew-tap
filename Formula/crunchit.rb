class Crunchit < Formula
  desc "Fast CLI for optimizing images and generating WebP/AVIF variants"
  homepage "https://github.com/artisenalcode/crunchit"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/artisenalcode/crunchit/releases/download/v0.2.1/crunchit-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "49f5d77aa3148d447496ff0aebfb0d869dded34a03492dd56aa913077b904036"
    else
      url "https://github.com/artisenalcode/crunchit/releases/download/v0.2.1/crunchit-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "55515fcfece3aed0b097a51eb6ea6caeffa4a03198abb0876ddc2a6c4475d547"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/artisenalcode/crunchit/releases/download/v0.2.1/crunchit-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c5736d4ec5aa343fa0c0fe42dc8aa20e6c6c821faf2ceebeecfaa4229ca7686"
    end
  end

  def install
    bin.install "crunchit"
  end

  test do
    assert_match "crunchit", shell_output("#{bin}/crunchit --version")
  end
end
