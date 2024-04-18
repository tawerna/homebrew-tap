class Smc < Formula
  desc "SMC CLI"
  homepage "https://github.com/tawerna/smc.cli"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tawerna/smc.cli/releases/download/v1.2.0/smc-v1.2.0-darwin-arm64.tar.gz"
      sha256 "2cc231b84837f18a9074166807f28487810da020cc12b6fbba3a4620148a1c88"

      def install
        bin.install "smc"
      end
    end
  end

  test do
    system "#{bin}/smc --help"
  end
end