class Smc < Formula
  desc "SMC CLI"
  homepage "https://github.com/tawerna/smc.cli"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawerna/smc.cli/releases/download/v1.3.0/smc-v1.3.0-darwin-arm64.tar.gz"
      sha256 "731c33273f5aa3c7578fbcf51dee57d70495f91a21af3b00bc083f4364e5b8b0"

      def install
        bin.install "smc"
      end
    end
  end

  test do
    system "#{bin}/smc --help"
  end
end