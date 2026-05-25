class Licscan < Formula
  desc "Open-source license & compliance scanner for modern codebases"
  homepage "https://github.com/codelake-dev/licscan"
  license "Apache-2.0"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.15.0/licscan-darwin-arm64"
      sha256 "06865dd589f712855876b50f8e624447d719b02bd1525d7b389a9704319f150c"

      def install
        bin.install "licscan-darwin-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.15.0/licscan-darwin-amd64"
      sha256 "e6af09cc831ff8ff41811defddf795c1bdd05529b954eef45d3afaf3d58267d9"

      def install
        bin.install "licscan-darwin-amd64" => "licscan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codelake-dev/licscan/releases/download/v0.15.0/licscan-linux-arm64"
      sha256 "a5c4b9e91e2539aa3e44eaf37bcda456043677955b9fa334c4958af29326b8eb"

      def install
        bin.install "licscan-linux-arm64" => "licscan"
      end
    else
      url "https://github.com/codelake-dev/licscan/releases/download/v0.15.0/licscan-linux-amd64"
      sha256 "24296d956320b48f8e433650b0474d21b50f3c4f4d96b9c59f3bf7d61b71852d"

      def install
        bin.install "licscan-linux-amd64" => "licscan"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/licscan --version")
  end
end
