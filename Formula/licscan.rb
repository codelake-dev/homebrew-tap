class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.17.0/licscan-darwin-arm64"
      sha256 "ac673ef9bb4d62f6c7b0c71b61f8f4d9c29400877e4c8371ae5c8170352fce1e"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.17.0/licscan-darwin-amd64"
      sha256 "2b2969a38da04d0ca47f6a6f1b2b2e7570728517fb570b0a21ee2293c6620fb7"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.17.0/licscan-linux-arm64"
      sha256 "02cf80e9ffbf9c1a468ca0924a3b618b28b536518acff813c8236e80f7448c78"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.17.0/licscan-linux-amd64"
      sha256 "e791a9f461a448dd48d8bb5b4208d69fb2d90b7c407dc5dac3ed125ea637d01f"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
