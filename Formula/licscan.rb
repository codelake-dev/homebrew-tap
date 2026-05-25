class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.11.1/licscan-darwin-arm64"
      sha256 "a3d13ecd46dae40547bebb4e57c7c184d7b0a3b9c68c7b20604610e64fe66ff7"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.11.1/licscan-darwin-amd64"
      sha256 "cc172e3e104f760721e2e6e55570a83771f1134ef94c5a52900f906514a42163"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.11.1/licscan-linux-arm64"
      sha256 "8f5d106d61b6f6e50b1a9d6ad188b8535dfe3f49be65f61dc2deb177160858aa"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.11.1/licscan-linux-amd64"
      sha256 "44932ec0f34c70aa9e823b078e820955e9eb87caa9efa016ee50b24c5b94bcbd"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
