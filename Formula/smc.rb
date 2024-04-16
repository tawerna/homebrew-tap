class Smc < Formula
  desc "SMC CLI"
  homepage "https://github.com/tawerna/smc.cli"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawerna/smc.cli/releases/download/v1.1.0/smc-v1.1.0-darwin-arm64.tar.gz"
      sha256 "6e2581fcc97c801588105be46ef8990710e96e629f2409e16ec988146818daff"

      def install
        bin.install "smc"
      end
    end
#    if Hardware::CPU.intel?
#      url "https://github.com/tawerna/smc.cli/releases/download/v1.0.1/smc-v1.0.1-darwin-x64.tar.gz"
#      sha256 ""
#
#      def install
#        bin.install "smc"
#      end
#    end
  end

  test do
    system "#{bin}/smc --help"
  end
end