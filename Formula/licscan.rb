class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.12.0/licscan-darwin-arm64"
      sha256 "206230d8f3def9ed9af92bd2f5e25bdf794445f757c2da2abb36c681c21b66f2"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.12.0/licscan-darwin-amd64"
      sha256 "da734b114f6cd22062eafa69c03df1b0b59a6a35fcd5e48b2e7f8ce4f7d88287"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.12.0/licscan-linux-arm64"
      sha256 "5e436b2ae42eee726e492027acf4a760cc0de9606dd251194d7b4947f65a03e7"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.12.0/licscan-linux-amd64"
      sha256 "0d5042f6fe6f30d6a824e896c469ee4e1cf9f9f0c4c93887ca327b340198b776"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
