class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.13.0/licscan-darwin-arm64"
      sha256 "70421137e64648a3e08fdb709ba40b217e3c0ffb791fa44d1c9496224c96860c"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.13.0/licscan-darwin-amd64"
      sha256 "32cb0d367d6d2b94a0fabfdda49f2c3c00fc72343cbf43dc7aba3691520e4189"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.13.0/licscan-linux-arm64"
      sha256 "8ff9a063acb8d83be55d0a35713e4c3b32c668e3930347296e7f6b2ce246239f"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.13.0/licscan-linux-amd64"
      sha256 "1d1f2fa77a54292c9dade0a74fc672894e41852effaac792647edc7346ce59d3"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
