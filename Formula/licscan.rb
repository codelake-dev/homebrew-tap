class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.12.0/licscan-darwin-arm64"
      sha256 "f10cd75b8d5e9b4b543823535a1ce8158473f8552177ccf14d4021ea8705bd47"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.12.0/licscan-darwin-amd64"
      sha256 "2fb1a2096ef7d6089884c4973153b2782cfe355a58aa4b048c1dc76a8a8e384e"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.12.0/licscan-linux-arm64"
      sha256 "c9bbe8b025b5f56660d53d8734047cbeffceda333d5557d9dadd6d41c8078783"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.12.0/licscan-linux-amd64"
      sha256 "db95632c264078381729307b9dab71147393552eec6414ac2bd06c0bd62aa1db"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
