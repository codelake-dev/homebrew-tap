class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.16.0/licscan-darwin-arm64"
      sha256 "235aba5e5c3d9fe36301fa95219133122d73bbafb6c1b193282eee55474605ca"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.16.0/licscan-darwin-amd64"
      sha256 "4c30c48c4b33e31b9272b8c3950938ccee8225721ddb8388b6b82f7ac4772266"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.16.0/licscan-linux-arm64"
      sha256 "39e9a1478bafaf4db7719b0249765bae17bdf6a0cae4500fc5a3ad0a6def594b"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.16.0/licscan-linux-amd64"
      sha256 "bf67c9a22950a8e2d43dea9b11c4b3ae82dd048e8313db7a823ce10971249a50"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
