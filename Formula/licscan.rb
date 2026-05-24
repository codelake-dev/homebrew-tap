class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.9.1/licscan-darwin-arm64"
      sha256 "74b571c794d05856dc5d03ecadac2568e4146c74b1b1bfdf060da0d0078b5e22"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.9.1/licscan-darwin-amd64"
      sha256 "9bf03b355ff34f1ecb5bee9ed836ba3e41ce49b97bbc48158411d3c8f4ef12e6"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.9.1/licscan-linux-arm64"
      sha256 "365fdc7904b6a0766a3a7fbbff703486b56f4d615cca84eef7657c13075937d4"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.9.1/licscan-linux-amd64"
      sha256 "8850267901af22300161090d87218d33283810ac41ee9321cb89d0dea68e89e3"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
