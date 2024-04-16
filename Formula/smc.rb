class Smc < Formula
  desc "SMC CLI"
  homepage "https://github.com/tawerna/smc.cli"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawerna/smc.cli/releases/download/v1.0.1/smc-v1.0.1-darwin-arm64.tar.gz"
      sha256 "b3cadd0ec503b30275bd3932f735596a0ec2a166d7e786b8d9dac7c5461e7028"

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