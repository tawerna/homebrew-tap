class Smc < Formula
  desc "SMC CLI"
  homepage "https://github.com/tawerna/smc.cli"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawerna/smc.cli/releases/download/v1.0.1/smc-v1.0.1-darwin-arm64.tar.gz"
      sha256 "12b71b3427ff81cccaf0428f7d934b24d304ede5da10fe7fdce435eb6f536ec3"

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