class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.10.0/licscan-darwin-arm64"
      sha256 "c56ccb3dcbc61a88a728c97de6d0044d2eec23b603b7f021f5c2b4be277fb640"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.10.0/licscan-darwin-amd64"
      sha256 "007317168a56ce6c20a5e26efb7cd1c8fd78024496b796ccc64e14203bd7d5c4"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.10.0/licscan-linux-arm64"
      sha256 "2b75870975520516858e3ffa6d224e9638644be943a86a25d3281846a4bed692"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.10.0/licscan-linux-amd64"
      sha256 "366230b1ec6de44f23d24333aa14382aef732a82d9606fb26e1aad5856dda5aa"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
