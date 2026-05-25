class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.14.0/licscan-darwin-arm64"
      sha256 "10825878ff4d4e6268cf00f36b77c4e30fa244511c58e1eb8500a9957ed07973"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.14.0/licscan-darwin-amd64"
      sha256 "498b30c602f5928a7bee04f3c2bebfc18fc1de1967271ecd362f3d37d8a8676a"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.14.0/licscan-linux-arm64"
      sha256 "e241e6663ad2ca1ad7c85b2761a4a65fac685cd8c7fbe18cedd60e065f1c73ff"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.14.0/licscan-linux-amd64"
      sha256 "a16d58377384222b0e5cd086f1e3e6f19aeeba04519a5d9f1e9fafa46006e75c"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
