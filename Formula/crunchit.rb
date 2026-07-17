class Crunchit < Formula
  desc "Fast CLI for optimizing images and generating WebP/AVIF variants"
  homepage "https://github.com/artisenalcode/crunchit"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/artisenalcode/crunchit/releases/download/v0.2.0/crunchit-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed6933b3af51c3fdfd4abd59ef6650bac87c63cc5a3bebf76cc2f6507e688b7c"
    else
      url "https://github.com/artisenalcode/crunchit/releases/download/v0.2.0/crunchit-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "479d2e4308e12da777bd868a36e29c5131041ad6c1e7b28bd53a392b87824897"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/artisenalcode/crunchit/releases/download/v0.2.0/crunchit-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f39c11573300d648aef06f9ea4f816d6b9affb32589cf017dc4bfd47133dadd"
    end
  end

  def install
    bin.install "crunchit"
  end

  test do
    assert_match "crunchit", shell_output("#{bin}/crunchit --version")
  end
end
