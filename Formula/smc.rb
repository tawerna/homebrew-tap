class Smc < Formula
  desc "SMC CLI"
  homepage "https://github.com/tawerna/smc.cli"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawerna/smc.cli/releases/download/v1.2.0/smc-v1.2.0-darwin-arm64.tar.gz"
      sha256 "6442d8737aca64aadb0c85d217494bbb01721754130815237c3b88bb1005a825"

      def install
        bin.install "smc"
      end
    end
  end

  test do
    system "#{bin}/smc --help"
  end
end