class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.11.0/licscan-darwin-arm64"
      sha256 "5f720665677482691e7f299754e0f78e4591cec7931f56230fe7bebf6700d884"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.11.0/licscan-darwin-amd64"
      sha256 "0cca9c652c38ab02cc6123c4b5f3a11868e311c702a0f9f2c4734cb17890ee34"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.11.0/licscan-linux-arm64"
      sha256 "20678838da46bb15c0965a42bfeffb82c5084d3bc918ea8376461174007c0471"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.11.0/licscan-linux-amd64"
      sha256 "4b0be0d108249a42b04888cbcd535e528a4a63f12cc438bb36c74f3ad8fc22b3"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
