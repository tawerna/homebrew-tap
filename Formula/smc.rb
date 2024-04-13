class Smc < Formula
  desc "SMC CLI"
  homepage "https://github.com/tawerna/smc.cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawerna/smc.cli/releases/download/v1.0.0/smc-v1.0.0-darwin-arm64.tar.gz"
      sha256 "cc123898bc4dc49f7e0cefe74bc1ebb095545ab47ab2a63cbb0c889979262894"

      def install
        bin.install "smc"
      end
    end
#    if Hardware::CPU.intel?
#      url "https://github.com/tawerna/smc.cli/releases/download/v1.0.0/smc-v1.0.0-darwin-x64.tar.gz"
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